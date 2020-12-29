<?php

require_once "controllers/plantilla.controlador.php";
require_once "controllers/productos.controlador.php";


require_once "models/plantilla.modelo.php";
require_once "models/productos.modelo.php";

$plantilla = new ControladorPlantilla();
$plantilla -> plantilla();