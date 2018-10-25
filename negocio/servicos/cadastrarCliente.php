
<?php

require_once("../../persistencia/ClienteDAO.php");
require_once("../dominio/Cliente.php");

$banco = new ClienteDAO();
$cliente = new Cliente();

$cliente->pegarDados();
$cliente->validarDados();



$banco->inserir($cliente);

foreach ($banco->selecionarTodos() as $registro) {
	echo "Codigo : ". $registro["cod_cliente"] . " | Nome : ". $registro["nome"] ." | CPF : ". $registro["cpf"] ." <br /> ";
};



?>