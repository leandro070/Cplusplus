<?php

/**
* 
*/
class Departamento 
{
	private $nombre;
	private $OID_departamento;
	private $FK_provincia;
	
	
	public function __construct($nombre,$OID_departamento,$FK_provincia)
	{
		
		$this -> nombre=$nombre;
		$this -> OID_departamento=$OID_departamento;
		$this -> FK_provincia=$FK_provincia;
		
	}

	
	public function getNombre(){
		return $this -> nombre;
	}
	public function getOID_departamento(){
		return $this -> OID_departamento;
        }
    public function getFK_provincia(){
		return $this -> FK_provincia;
     }
	
	//SETTER
	
	
}