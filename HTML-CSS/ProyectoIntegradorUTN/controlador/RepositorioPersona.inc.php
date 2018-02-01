<?php


class RepositorioPersona{
    
   
   
    
    public static function verificarEstadoCivil($id){
        if ($id == "soltero"){
            $estadoCivilId = 1;
        } elseif ($id == "conyuge") {
            $estadoCivilId = 2;
        } elseif ($id == "casado") {
            $estadoCivilId = 3;
        } elseif ($id == "viudo") {
            $estadoCivilId = 4;
        } elseif ($id== "divorciado") {
            $estadoCivilId = 5;
        }
        
        return $estadoCivilId;
    }
    
    public static function verificarGenero($id){
        if ($id == "hombre") {
            $generoId = 1;
        } elseif ($id == "mujer") {
            $generoId = 2;
        } else {
            $generoId = 3;
        }
        
        return $generoId;
    }


    public static function guardar($conexion,$data_json){
        
        include_once 'DbSentencias.php';
        include_once 'RepositorioDomicilio.inc.php';
        include_once 'Persona.class.php';
        try{
        //DIVIDO EL JSON ENTRE PERSONA Y DOMICILIO
        $parametroPersona=array("Nombre"=>$data_json['Nombre'],"Apellido"=>$data_json['Apellido'],"ApellidoMaterno"=>$data_json['ApellidoMaterno'],"DNI"=>$data_json['DNI'],"Cuil"=>$data_json['Cuil'],"FechaNacimiento"=>$data_json['FechaNacimiento'],"Email"=>$data_json['Email'],"EstadoCivil"=>$data_json['EstadoCivil'],"Genero"=>$data_json['Genero'],"Telefono"=>$data_json['Telefono'],"Celular"=>$data_json['Celular'],"TelefonoAlternativo"=>$data_json['TelefonoAlternativo']);
        $parametroDomicilio=array("Direccion"=>$data_json['Direccion'],"Numero"=>$data_json['Numero'],"Piso"=>$data_json['Piso'],"Dpto"=>$data_json['Dpto'],"Departamento"=>$data_json['Departamento']);

        $pre_domicilioId = RepositorioDomicilio::guardarDomicilio($conexion,$parametroDomicilio);
        //PRE_DOMICILIO ES UN ARRAY QUE SE ESTRUCTURA ASI: array->[0]->[OID_domicilio]
        $pre2_domicilioId=$pre_domicilioId[0];
        $domicilioId=$pre2_domicilioId["OID_domicilio"];
        //EXTRAIGO LOS DATOS DE LA PERSONA

        $nombre = $parametroPersona["Nombre"];
        $apellido = $parametroPersona["Apellido"];
        $apellidoMaterno = $parametroPersona["ApellidoMaterno"];
        $dni = $parametroPersona["DNI"];
        $cuil = $parametroPersona["Cuil"];
        $fechaNacimiento = $parametroPersona["FechaNacimiento"];
        $email = $parametroPersona["Email"];
        $estadoCivil = $parametroPersona["EstadoCivil"];
        $genero = $parametroPersona["Genero"];
        $telefonoFijo = $parametroPersona["Telefono"];
        $telefonoCelular = $parametroPersona["Celular"];
        $telefonoAlternativo = $parametroPersona["TelefonoAlternativo"];
        $genero= $parametroPersona["Genero"];
        $estadoCivil= $parametroPersona["EstadoCivil"];

        
        if(empty($telefonoFijo)){
            $telefonoFijo='NULL';
        }
        if(empty($telefonoCelular)){
            $telefonoCelular='NULL';
        }
        if(empty($telefonoAlternativo)){
            $telefonoAlternativo='NULL';
        }
       

        //CREO UNA PERSONA, NO SE PARA QUE, PERO LO CREO PORQUE QUEDA BONITO        
        $persona = new Persona($nombre,$apellido,$apellidoMaterno,$dni,$cuil,$fechaNacimiento,$email,$estadoCivil,$genero,$telefonoFijo,$telefonoCelular,$telefonoAlternativo,$domicilioId);
        //BUSCO ID
        $estadoCivilId = RepositorioPersona::verificarEstadoCivil($estadoCivil);
        $generoId = RepositorioPersona::verificarGenero($genero);
        
       
        
        $sql = DbSentencias::INSERTAR_PERSONA." VALUES ('".$nombre."','".$apellido."','".$apellidoMaterno."',".$dni.",".$cuil.",".$fechaNacimiento.",".$telefonoFijo.",".$telefonoCelular.",".$telefonoAlternativo.",'".$email."',".$generoId.",".$estadoCivilId.",".$domicilioId.")";
        $sentencia = $conexion -> prepare($sql); //este metodo evita la injeccion sql
        $sentencia -> execute();
        } 
        catch (PDOException $e) {
            print "ERROR: " . $e->getMessage();
        }
        
    }
    
    public static function verificarPersona($conexion,$data){
        include_once 'DbSentencias.php';

        $dni=$data['DNI'];

        try {
            $sql = DbSentencias::VERIFICAR_EXIST_PERSONA . "dni=".$dni;
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
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
