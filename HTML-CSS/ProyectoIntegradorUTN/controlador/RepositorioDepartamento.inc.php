<?php

/**
* 
*/
class RepositorioDepartamento
{

	public static function obtener_departamento($conexion,$id_provincia){
		if(isset($conexion)){
			try {
				include_once 'Departamento.class.php';
                include_once 'DbSentencias.php';
				$sql = DbSentencias::BUSCAR_DEPARTAMENTOS . $id_provincia;
				$sentencia = $conexion -> prepare($sql); //este metodo evita la injeccion sql
				$sentencia -> execute();
				$resultado = $sentencia -> fetchAll();
				if (count($resultado)) {
					foreach ($resultado as $fila) { 
						$departamento[]= new Departamento( 
							$fila['nombre'],$fila['OID_departamento'],$fila['FK_provincia']

						);

					}
				} else {
					print "No hay departamentos";
				}


			} catch (PDOException $e) {
				print "ERROR: " . $e->getMessage();
			}

		}
		return $resultado;
	}


}