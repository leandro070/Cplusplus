<?php
/**
* 
*/
class RepositorioDomicilio
{
	
	 public static function guardarDomicilio($conexion,$parametroDomicilio){
        /*
        $json = file_get_contents('php://input');
        $data = json_decode($json);
        $direccion = $data->Domicilio->Domicilio;
        $numero = $data->Domicilio->Numero;
        $piso = $data->Domicilio->Piso;
        $localidad = $data->Domicilio->Localidad;
         */
        
        include_once 'DbSentencias.php';
        include_once 'Domicilio.class.php';


        $direccion=$parametroDomicilio["Direccion"];
        $numero=$parametroDomicilio["Numero"];
        $piso=$parametroDomicilio["Piso"];
        $dpto=$parametroDomicilio["Dpto"];
        $departamento=$parametroDomicilio["Departamento"];

        if(empty($piso)|| empty($dpto)){
            $piso='NULL';
            $dpto='NULL';
        }

		try {
        	$sql = DbSentencias::INSERTAR_DOMICILIO . " VALUES ('".$direccion."',".$numero.",".$piso.",'".$dpto."',".$departamento.")";
        	$sentencia = $conexion -> prepare($sql); //este metodo evita la injeccion sql
        	$sentencia -> execute();
            $sql= DbSentencias::ULTIMO_INSERTADO;
            $sentencia = $conexion -> prepare($sql);
            $sentencia -> execute();
            $domicilioID = $sentencia -> fetchAll();


            $domicilio=new Domicilio($direccion,$numero,$piso,$dpto,$domicilioID);
        } catch (PDOException $e) {
			print "ERROR: " . $e->getMessage();
		}

        return $domicilioID;
    }


    public static function verificarDomicilio($conexion,$domicilio){
        include_once 'DbSentencias.php';

        $direccion=$domicilio["Direccion"];
        $numero=$domicilio["Numero"];
        $piso=$domicilio["Piso"];
        $dpto=$domicilio["Dpto"];
        $departamento=$domicilio["Departamento"];

        try {
            $sql = DbSentencias::VERIFICAR_EXIST_DOMICILIO . "calle='".$direccion."' AND numero=".$numero." AND piso=".$piso." AND depto='".$dpto."' AND fk_departamento=".$departamento;
            $sentencia = $conexion -> prepare($sql); //este metodo evita la injeccion sql
            $sentencia -> execute();
            $resultado=$sentencia->fetchAll();
            $resultado=$resultado[0];
            $resultado=$resultado[0];
            } catch (PDOException $e) {
            print "ERROR: " . $e->getMessage();
        }


        return $resultado;

    }



	}



  ?>