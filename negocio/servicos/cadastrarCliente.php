
<?php

require_once("../../persistencia/ClienteDAO.php");
require_once("../dominio/Cliente.php");

$sistemaAlarme = new pessoa1();
$pessoa = new pessoa();

$pessoa->pegarDados();
$pesssoa->validarDados();



$sistemaAlarme->inserir($pessoa);

foreach ($sistemaAlarme->selecionarTodos() as $registro) {
	echo "Codigo : ". $registro["cod_pessoa"] . " | Nome : ". $registro["nome"] ." | CPF : ". $registro["cpf"] ."| Contato : ". $registro["contato"]|Email : ". $registro["email"] ." |."<br /> ";
};



?>
