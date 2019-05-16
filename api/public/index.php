<?php
if (PHP_SAPI == 'cli-server') {
    // To help the built-in PHP dev server, check if the request was actually for
    // something which should probably be served as a static file
    $url = parse_url($_SERVER['REQUEST_URI']);
    $file = __DIR__ . $url['path'];
    if (is_file($file)) {
        return false;
    }
}

require __DIR__ . '/../vendor/autoload.php';

session_start();

// Instantiate the app
$settings = require __DIR__ . '/../src/settings.php';
$app = new \Slim\App($settings);

$hash = 'sha256';
$key = "044dbfe4fdd593c6e1b5a42d4ed1920832b2e1f14a1f12ea8253a6f51afdb584";

$HTTP_API_KEY = hash($hash, $key);

// Set up dependencies
require __DIR__ . '/../src/dependencies.php';

// Register middleware
require __DIR__ . '/../src/middleware.php';

// Register routes
require __DIR__ . '/../src/routes.php';

require __DIR__ . '/../app/app_loader.php';

//Token de acceso a la aplicación
$app->add(function ($request, $response, $next) use ($HTTP_API_KEY, $hash) {
    $headers = $request->getHeaders();
    $key = $headers['HTTP_API_KEY'][0];
    $key = hash($hash, $key);

    if ($key == $HTTP_API_KEY || strpos($request->getUri()->getPath(), 'verificacion/') === 0) {
        $response = $next($request, $response);
    } else {
        $response->write(
            json_encode(array(
                'Error' => 'HTTP 401.1',
                'Message' => 'Unauthorized: Access is denied due to invalid credentials.',
            ), JSON_UNESCAPED_UNICODE)
        );
    }
    return $response;
});

// CORS configuration
$app->add(function ($req, $res, $next) {
    $response = $next($req, $res);
    return $response
        ->withHeader('Content-type', 'application/json')
        ->withHeader('Access-Control-Allow-Origin', '*')
        ->withHeader('Access-Control-Allow-Headers', 'api-key, X-Requested-With, Content-Type, Accept, Origin, Authorization')
        ->withHeader('Allow', 'GET, POST, PUT, DELETE')
        ->withHeader('Access-Control-Request-Method', 'GET, POST, PUT, DELETE')
        ->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
});

// Eloquent
$container = $app->getContainer();
$capsule = new Illuminate\Database\Capsule\Manager;
$capsule->addConnection($container->get('settings')['db']);
$capsule->setAsGlobal();
$capsule->bootEloquent();

// Run app
$app->run();
