<?php

require_once("DBMySQL.php");
require_once("../../negocio/dominio/Cliente.php");

class ClienteDAO extends DBMySQL {

	public function inserir($cliente){	
		$this->query("INSERT INTO clientes (nome,cpf) VALUES ('".$cliente->nome."','".$cliente->cpf."');" );
	}
	
	public function selecionarTodos(){
		return $this->select("SELECT cod_cliente, nome, cpf FROM clientes;");
	}

}

?>