<?php

class ControladorPlantilla{

    /*=============================================
	Llamados a la plantilla.
	=============================================*/

    static public function plantilla(){

        include "views/plantilla.php";

    }

    /*=============================================
	Traemos los estilos dinamicos de la plantilla.
    =============================================*/
    
    static public function ctrEstiloPlantilla(){

		$tabla = "plantilla";

		$respuesta = ModeloPlantilla::mdlEstiloPlantilla($tabla);

		return $respuesta;
    }
}