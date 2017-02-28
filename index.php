<html>
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
	<?php
		$link = mysqli_connect('localhost', 'jorge', 'jorge') or trigger_error(mysqli_error());
  		//tenta se conectar ao banco de dados LampEd
    	mysqli_select_db($link, 'LampEd') or trigger_error(mysqli_error($link));
    	$nome = mysqli_real_escape_string($link, $_POST['nome']);
      	$senha = mysqli_real_escape_string($link, $_POST['senha']);
      	$email = mysqli_real_escape_string($link, $_POST['email']);
      	$dataNascimento = mysqli_real_escape_string($link, $_POST['dataNascimento']);
    	$query = "INSERT INTO usuario (`nome`, `senha`, `email`, `dataNascimento`, `tipo`) VALUES('".$nome."', '".$senha."', '".$email."', '".$dataNascimento."', '0')";
    	$insert = mysqli_query($link, $query);
    	if (!$insert)
    	{
      		echo ("Não foi possível inserir o usuário.");
		}
		else
		{
			header('location: index.php');
		}
	?>
		<div align="center">
			<h1>LampEd</h1>
		</div><br>
		<hr><br>
		<div align="left">
			<h2>
				<ul>
					<li>
						<a href="index.php">Home</a>
					</li>
					<li>
						<a href="servicos.php">Serviços</a>
					</li>
					<li>
						<a href="quemSomos.html">Quem somos</a>
					</li>
					<li>
						<a href="contatos.php">Contatos</a>
					</li>
				</ul>
			</h2>
		</div>
		<div align="center">
			<h3> CADASTRE-SE </h3>
			<form method="POST" action="index.php">
				<h4>Nome:</h4><br>
				<input type="text" name="nome">
				<h4>Senha:</h4><br>
				<input type="password" name="senha">
				<h4>E-Mail:</h4><br>
				<input type="email" name="email">
				<h4>Data de Nascimento</h4><br>
				<input type="date" name="dataNascimento">
				<input type="submit" name="cadastrar" value="Cadastrar">
			</form>
		</div>
	</body>
</html>