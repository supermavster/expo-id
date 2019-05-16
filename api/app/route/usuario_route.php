<?php

use App\Controller\UsuarioController;

$app->group('/usuarios/', function () {

  $this->get('', function ($req, $res, $args) {
      $um = new UsuarioController();

    $res->write(
      json_encode($um->getAll(), JSON_UNESCAPED_UNICODE)
    );

    return $res;
  });
  $this->get('mujeres', function ($req, $res, $args) {
      $um = new UsuarioController();

    $res->write(
      json_encode($um->getEdadMujeres(), JSON_UNESCAPED_UNICODE)
    );

    return $res;
  });
    $this->get('hombres', function ($req, $res, $args) {
        $um = new UsuarioController();

        $res->write(
            json_encode($um->mesHombres(), JSON_UNESCAPED_UNICODE)
        );

        return $res;
    });


});
