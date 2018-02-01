<?php

/**
* 
*/
class Conexion
{
	
	private static $conexion;

	public static function abrirConexion(){
		# Si no esta iniciada la conexion
		if(!isset(self::$conexion)){
			try{
				include_once 'config.inc.php';
				# creo la conexion con la base de datos
				self::$conexion= new PDO("mysql:host=$nombre_servidor; dbname:$nombre_base_datos", $nombre_usuario, $password);
				//PDO lanza una excepcion en caso de error y asi podemos ver que ha pasado
				self::$conexion -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				self::$conexion -> exec("SET CHARACTER SET utf8");
			}
			catch (PDOException $e){
				print "EROOR: " . $e -> getMessage()."<br>";
				die();
			}
		}
	}

	public static function cerrarConexion(){
		if (isset(self::$conexion)) {
			self::$conexion=null;
		}
	}

	public static function getConexion(){
		return self::$conexion;
	}




}