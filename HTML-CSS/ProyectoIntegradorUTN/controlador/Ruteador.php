<?php




  
     // averiguo que formulario me pide una acciòn atrapo los datos de la URL   
        $accion = $_GET['accion']; 
        $id=$_GET['id'];
        switch ($accion) {
         case 'Provincia':
                include_once 'conexion.inc.php';

                include_once 'RepositorioProvincia.inc.php';
                Conexion::abrirConexion();
                $resultado=RepositorioProvincia::obtener_provincia(Conexion::getConexion());
                Conexion::cerrarConexion();
              break;
        case 'Departamento':
                include_once 'conexion.inc.php';

                include_once 'RepositorioDepartamento.inc.php';
                Conexion::abrirConexion();
                $resultado=RepositorioDepartamento::obtener_departamento(Conexion::getConexion(),$id);
                Conexion::cerrarConexion();
               break;
        case 'agregar':
                include_once 'conexion.inc.php';
                include_once 'RepositorioPersona.inc.php';
                $datosFormulario = $_POST;
                Conexion::abrirConexion();
                $resultado = RepositorioPersona::guardar(Conexion::getConexion(),$datosFormulario);
                Conexion::cerrarConexion();

            break;
        /*case 'ExisteDomi':
                include_once 'conexion.inc.php';
                include_once 'RepositorioDomicilio.inc.php';
                $datosDomicilio=$_POST;
                Conexion::abrirConexion();
                $resultado = RepositorioDomicilio::verificarDomicilio(Conexion::getConexion(),$datosDomicilio);
                Conexion::cerrarConexion();
            break;*/
        case 'ExistePersona':
                include_once 'conexion.inc.php';
                include_once 'RepositorioPersona.inc.php';
                $datosPersona=$_POST;
                Conexion::abrirConexion();
                $resultado = RepositorioPersona::verificarPersona(Conexion::getConexion(),$datosPersona);
                Conexion::cerrarConexion();           
                break;
        }

        

        echo json_encode($resultado); //devuelvo datos al js
        
   