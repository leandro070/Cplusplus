<?php

/**
* 
*/
class Provincia 
{
	private $nombre;
	private $OID_provincia;
	
	
	public function __construct($nombre,$OID_provincia)
	{
		
		$this -> nombre=$nombre;
		$this -> OID_provincia=$OID_provincia;
		
	}

	
	public function getNombre(){
		return $this -> nombre;
	}
	public function getOID_provincia(){
		return $this -> OID_provincia;
        }
	

}