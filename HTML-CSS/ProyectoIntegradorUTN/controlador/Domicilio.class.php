<?php  

/**
* 
*/
class Domicilio
{
	private $direccion,$numero,$piso,$dpto,$domicilioID;

	public function __construct($direccion,$numero,$piso,$dpto,$domicilioID)
	{
		$this->direccion=$direccion;
		$this->numero=$numero;
		$this->piso=$piso;
		$this->dpto=$dpto;
		$this->domicilioID=$domicilioID;
	}

	public function getdireccion(){
		return $this -> direccion;
	}
	public function getnumero(){
		return $this -> numero;
	}
	public function getpiso(){
		return $this -> piso;
	}
	public function getdpto(){
		return $this -> dpto;
	}
	public function getdomicilioID(){
		return $this -> domicilioID;
	}


	public function setdireccion ($direccion){
		$this->direccion =$direccion ;
	}
	public function setnumero ($numero){
		$this->numero =$numero ;
	}
	public function setpiso ($piso){
		$this->piso =$piso ;
	}
	public function setdpto ($dpto){
		$this->dpto =$dpto ;
	}
}

?>