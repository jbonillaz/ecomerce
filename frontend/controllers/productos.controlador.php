<?php


class ControladorProductos{

     static public function ctrMostrarCategorias($item, $valor){

        $tabla ="catagorias";

        $respuesta = ModeloProductos::mdlMostrarCategorias($tabla, $item, $valor);

        return $respuesta;

        
    }
    
}
