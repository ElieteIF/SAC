<?php

require_once("DBMySQL.php");
require_once("../../negocio/dominio/pessoa.php");

class pessoa1 extends DBMySQL {

	public function inserir($pessoa){	
		$this->query("INSERT INTO pessoa (nome,cpf, contato, email) VALUES ('".$pessoa->nome."','".$pessoa->cpf."','".$pessoa->contato."','".$pessoa->email."');" );
	}
	
	public function selecionarTodos(){
		return $this->select("SELECT cod_pessoa, nome, cpf, contato, email FROM pessoa;");
	}

}

?>
