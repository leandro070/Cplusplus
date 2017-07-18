<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html id="fondo"><head>
   <meta content="text/html; charset=UTF-8" http-equiv="content-type">
   <meta name="description" content="MG Logististica viaja a todo el pais.">
   <meta name="author" content="Leandro" >
	<meta name="copyright" content="">
	<meta name="keywords" content="">
	<meta http-equiv="Refresh" content="7;url=http://www.mgmudanzas.com.ar">
	<meta name="description" content="Eficiencia, responsabilidad y compromiso son parte de nuestra fortaleza y la base para que en nuestro Servicio Ud. encuentre la solución en un traslado o mudanza. 
Disponibilidad y predisposición nos diferencia del resto.">
	<title>MG - Logistica en Mudanzas - Transporte</title>
   <link rel="stylesheet" href="styles.css" type="text/css">

  </head>
  
  <body lang="es-ar">
    <div id="contenedor">
  <div id="facebook"><a href="https://www.facebook.com/MgLogisticaYDistribucion"><img src="images/facebook.png" alt="facebook"></a> </div><div id="fondonegro"></div><div id="cajanegra">

<div id="cajaempresa"><b id="empresa">Empresa</b></div>
<div id="cajamudanza"><b id="mudanzas">Mudanzas</b></div>
<div id="cajatransporte"><b id="transportes">Transporte</b></div>
<div id="cajacontacto"><b id="contacto">Contacto</b></div> 
<div id="casa"><a href="index.html"><img src="images/casa.png" alt="casa"></a> </div> 
<div id="camion2"><a href="mudanzas.html"><img src="images/camion2.png" alt="camion"></a> </div>  
<div id="camion1"><a href="transporte.html"><img src="images/camion1.png" alt="camion"></a> </div>   
<div id="telefono"><a href="contacto.html"><img src="images/telefono.png" alt="telefono"></a> </div>
<div id="mg"></div> 
<div id="sub" align="center">Logística en transporte<br> y mudanza</div>

</div><div id="cajafondo">


<?php
$nombre = $_POST['nombre'];
$mail = $_POST['mail'];
$numero = $_POST['numero'];

$header = 'From: ' . $mail . " \r\n";
$header .= "X-Mailer: PHP/" . phpversion() . " \r\n";
$header .= "Mime-Version: 1.0 \r\n";
$header .= "Content-Type: text/plain";

$mensaje = "Este mensaje fue enviado por: " . $nombre . " \r\n";
$mensaje .= "
Su telefono es: " . $numero . " \r\n";
$mensaje .= "
Su e-mail es: " . $mail . " \r\n"; 
$mensaje .= "
Mensaje: " . $_POST['mensaje'] . " \r\n";  
$mensaje .= "
Enviado el " . date('d/m/Y', time());

$para = 'info@mgmudanzas.com.ar';
$asunto = 'CONTACTO MG MUDANZAS';

mail($para, $asunto, utf8_decode($mensaje), $header);

echo '<div align="center"><br><br><b> Mensaje enviado correctamente</b><br><br><br><p>Serás dirigido automáticamente al inicio en cinco segundos. En caso contrario, puedes acceder haciendo click <a href="http://www.mgmudanzas.com.ar/">aquí</a></p></div>';
?>

</div>
  
  </div>
</body></html>