<?php
/**
* 
*/
include("../conexion/conn.php");
class receta {
	
	protected $iidreceta;
	protected $cnombre;
	protected $cingrediente;
	protected $creceta;


	public function __construct($nom, $ing,$rec,$idrec='')
	{
		
		$this->cnombre=$nom;
		$this->cingrediente = $ing;
		$this->creceta=$rec;
		$this->iidreceta=$idrec;
		
	}

	static function soloID($idrec){		
		return new self('','','',$idrec);
	}

	static function ningunDato(){
		return new self('','','','');
	}


	public function insert(){
		$db=new Conexion();
		$SQLInsert="INSERT INTO reseta (cnombre, cingrediente, creceta) values ('$this->cnombre','$this->cingrediente','$this->creceta')";
		if($db->query($SQLInsert))
		 header("location: recetas.php");
		else 
		  header("location: recetas.php");
	}

	public function delete(){		
		$db=new Conexion();
		$SQLDelete="DELETE FROM reseta WHERE iidreceta=$this->iidreceta";
		if($db->query($SQLDelete))
		 header("location: recetas.php");
		else 
		  header("location: recetas.php");

	}

	public function update(){		
		$db=new Conexion();
		$SQLUpdate="UPDATE reseta SET cnombre='$this->cnombre', cingrediente='$this->cingrediente',creceta='$this->creceta' WHERE iidreceta=$this->iidreceta";
		if($db->query($SQLUpdate))
		 header("location: recetas.php");
		else 
		  header("location: recetas.php");

	}
	public function selectID(){
		$db=new Conexion();
		$SQLSelect="SELECT * FROM reseta WHERE iidreceta=$this->iidreceta";
		$row=$db->query($SQLSelect);
		return $row;
	}


	public function select(){
		$db=new Conexion();
		$SQLSelect="SELECT * FROM reseta";
		$row=$db->query($SQLSelect);
		return $row;
	}

	

}
?>