<?php
/**
* 
*/
include("../conexion/conn.php");
class Chocolate {
	
	protected $iidchocolate;
	protected $cnombre;
	protected $cdescripcion;
	protected $imagen;


	public function __construct($nom,$cdescrip,$img,$idchoco='')
	{
		
		$this->cnombre=$nom;
		$this->cdescripcion=$cdescrip;
		$this->imagen=$img;
		$this->iidchocolate=$idchoco;
		
	}

	static function soloID($idchoco){		
		return new self('','','',$idchoco);
	}

	static function ningunDato(){
		return new self('','','','');
	}


	public function insert(){
		$db=new Conexion();
		$SQLInsert="INSERT INTO chocolates (cnombre, cdescripcion, imagen) values ('$this->cnombre','$this->cdescripcion','$this->imagen')";
		if($db->query($SQLInsert))
		 header("location: agregar.php");
		else 
		  header("location: agregar.php");
	}

	public function delete(){		
		$db=new Conexion();
		$SQLDelete="DELETE FROM chocolates WHERE iidchocolate=$this->iidchocolate";
		if($db->query($SQLDelete))
		 header("location: agregar.php");
		else 
		  header("location: agregar.php");

	}

	public function update(){		
		$db=new Conexion();
		$SQLUpdate="UPDATE chocolates SET cnombre='$this->cnombre', cdescripcion='$this->cdescripcion',imagen='$this->imagen' WHERE iidchocolate=$this->iidchocolate";
		if($db->query($SQLUpdate))
		 header("location: agregar.php");
		else 
		  header("location: agregar.php");

	}
	public function selectID(){
		$db=new Conexion();
		$SQLSelect="SELECT * FROM chocolates WHERE iidchocolate=$this->iidchocolate";
		$row=$db->query($SQLSelect);
		return $row;
	}


	public function select(){
		$db=new Conexion();
		$SQLSelect="SELECT * FROM chocolates";
		$row=$db->query($SQLSelect);
		return $row;
	}

}
?>