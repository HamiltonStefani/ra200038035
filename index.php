<?php 
session_start();

if(isset($_SESSION['ra'])) {
  if($_SESSION['ra'] == "200038035"){
    header("Location: http://localhost/ra200038035/view/alunos.php");
    exit; 
  };
}
?>

<!doctype html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>MAPA_BACK-ENDII</title>
    <!-- Bootstrap core CSS -->
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet">
  </head>

  <body class="text-center container d-flex align-items-center justify-content-center p-3 mb-2 bg-secondary text-white" style="height: 100vh;">
    <form class="form-signin" style="width: 30%" action="./controllers/login.php" method="POST">
      <p>RA: 200038035 - Senha; hamilton</p>
      <h1 class="h3 mb-3 font-weight-normal">Login</h1>
      <label for="number-ra" class="sr-only">RA</label>
      <input type="text" name="number-ra" id="number-ra" class="form-control" placeholder="RA" required autofocus>
      <label for="password" class="sr-only">Senha</label>
      <input type="password" name="password" id="password" class="mt-3 form-control" placeholder="Senha" required>
      <button class="mt-4 btn btn-lg btn-primary btn-block" type="submit">Login</button>
    </form>
  </body>
</html>