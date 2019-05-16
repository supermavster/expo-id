<?php
$base = __DIR__ . '/../app/';

$folders = [
    'lib',
    'model',
    'controller',
    'route'
];

foreach ($folders as $f) {
    foreach (glob($base . "$f/*.php") as $filename) {
        require $filename;
    }
}
