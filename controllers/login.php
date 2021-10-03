<?php

session_start();

$ra = '200038035';

$senha = 'hamilton';

$inputRA = filter_input(INPUT_POST, 'number-ra');
$inpuPassword = filter_input(INPUT_POST, 'password');

if($inputRA && $inpuPassword) {
  if($inputRA == $ra && $inpuPassword == $senha) {
    $_SESSION['ra'] = $inputRA;
    header("Location: http://localhost/ra200038035/view/alunos.php");
    exit;
  }
}

header("Location: http://localhost/ra200038035/");
exit;

// var_dump($ra, $password);




?>