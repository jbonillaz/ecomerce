<?php

require_once "../controllers/plantilla.controlador.php";
require_once "../models/plantilla.modelo.php";

class AjaxPlantilla{

	public function ajaxEstiloPlantilla(){

		$respuesta = ControladorPlantilla::ctrEstiloPlantilla();

        echo json_encode($respuesta);
        // var_dump($respuesta);

	}


}

$objeto = new AjaxPlantilla();
$objeto -> ajaxEstiloPlantilla();