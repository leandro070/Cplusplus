<?php 

/**
* 
*/
class Persona
{
	private $nombre;
	private $apellido;
	private $apellido_materno;
	private $dni;
	private $cuil;
	private $f_nacimiento;
	private $email;
	private $estado_civil;
	private $genero;
	private $telefonofijo;
	private $telefonocelular;
	private $telefonoalternativo;


	public function __construct( $nombre, $apellido, $apellido_materno, $dni, $cuil, $f_nacimiento, $email, $estado_civil, $genero, $telefonofijo, $telefonocelular, $telefonoalternativo)
	{
		$this->nombre = $nombre ;
		$this->apellido = $apellido ;
		$this->apellido_materno = $apellido_materno;
		$this->dni = $dni;
		$this->cuil = $cuil ;
		$this->f_nacimiento = $f_nacimiento ;
		$this->email = $email ;
		$this->estado_civil = $estado_civil ;
		$this->genero = $genero ;
		$this->telefonofijo = $telefonofijo ;
		$this->telefonocelular = $telefonocelular ;
		$this->telefonoalternativo = $telefonoalternativo ;

	}

	public function getnombre(){
		return $this -> nombre;
	}public function getapellido(){
		return $this -> apellido;
	}public function getapellido_materno(){
		return $this -> apellidomaterno;
	}public function getdni(){
		return $this -> dni;
	}public function getcuil(){
		return $this -> cuil;
	}public function getf_nacimiento(){
		return $this -> f_nacimiento;
	}public function getemail(){
		return $this -> email;
	}public function getestado_civil(){
		return $this -> estado_civil;
	}public function getgenero(){
		return $this -> genero;
	}public function gettelefonofijo(){
		return $this -> telefonofijo;
	}public function gettelefonocelular(){
		return $this -> telefonocelular;
	}public function gettelefonoalternativo(){
		return $this -> telefonoalternativo;
	}
	public function setnombre ($nombre){
		$this->nombre =$nombre ;
	}public function setapellido ($apellido){
		$this->apellido =$apellido ;
	}public function setapellido_materno ($apellido_materno){
		$this->apellido_materno =$apellido_materno ;
	}public function setdni ($dni){
		$this->dni =$dni ;
	}public function setcuil ($cuil){
		$this->cuil =$cuil ;
	}public function setf_nacimiento ($f_nacimiento){
		$this->f_nacimiento =$f_nacimiento ;
	}public function setemail ($email){
		$this->email =$email ;
	}public function setestado_civil ($estado_civil){
		$this->estado_civil =$estado_civil ;
	}public function setgenero ($genero){
		$this->genero=$genero;
	}public function settelefonofijo ($telefonofijo){
		$this->telefonofijo =$telefonofijo ;
	}public function settelefonocelular ($telefonocelular){
		$this->telefonocelular =$telefonocelular ;
	}public function settelefonoalternativo ($telefonoalternativo){
		$this->telefonoalternativo =$telefonoalternativo ;
	}
}






 ?>