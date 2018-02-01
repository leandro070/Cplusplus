<?php

/**
* 
*/
class RepositorioProvincia
{

	public static function obtener_provincia($conexion){
		$usuarios = array();
		if(isset($conexion)){
			try {
				include_once 'Provincia.class.php';
                include_once 'DbSentencias.php';
				$sql = DbSentencias::BUSCAR_PROVINCIAS;

				$sentencia = $conexion -> prepare($sql); //este metodo evita la injeccion sql
				$sentencia -> execute();
				$resultado = $sentencia -> fetchAll();
				
				if (count($resultado)) {
					foreach ($resultado as $fila) { 
						# $usuario,$password,$nombre,$apellido,$correo_electronico,$fecha_registro
						$provincias[]= new Provincia( 
							$fila['nombre'],$fila['OID_provincia']

						);

					}
				} else {
					print "No hay provincias";
				}


			} catch (PDOException $e) {
				print "ERROR: " . $e->getMessage();
			}

		}
		return $resultado;
	}


}