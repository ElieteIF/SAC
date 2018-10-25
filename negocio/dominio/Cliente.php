
<?php 

class Cliente {

	public $codigo;
	public $nome;
	public $cpf;
	
	public function __construct($nome = null, $cpf = null, $codigo = null){
		$this->nome = $nome;
		$this->cpf = $cpf;
		$this->codigo = $codigo;
	}
		
	public function pegarDados(){
		
		$this->nome = $_GET["nome"];
		$this->cpf = $_GET["cpf"];
	}
	
	public function validarDados(){
	}

}

?>