<?php 
	require_once '03.php';

	if(isset($_FILES["arquivo"])){
		$dir = "";
		$errors= [];
		$arquivo = $dir . basename($_FILES["arquivo"]["name"]);
		$extensao = strtolower(pathinfo($arquivo,PATHINFO_EXTENSION));

	  if($_FILES["arquivo"]["size"]<=0) $errors[]= "Arquivo vazio.";
	  if($extensao!='txt') $errors[]='Tipo de arquivo não suportado. Tipos suportados: txt.';

	  if(count($errors) > 0){
	  	echo '<h3>Não foi possível importar o arquivo devido ao(s) erro(s) abaixo:</h3>';
			echo implode("<br />", $errors).'<br /><br /><br />';
		}else{
			if(move_uploaded_file($_FILES["arquivo"]["tmp_name"], $arquivo)){
				$lf= new LotoFacil;
				$array = $lf->lerTxt($arquivo);
				$lf->arrayToCsv($array);
			}else{
				echo '<br />Ocorreu algum erro. Contato o suporte.';
			}
		}
	}
?>

<html>
	<head>
		<title></title>
	</head>
<body>
	<h2>Escolha um arquivo para importar</h2>
	<form action="03Form.php" method="post" id="formArquivo" enctype="multipart/form-data">
		<input type="file" name="arquivo" id="arquivo" />
		<button type="submit" name="carregar" id="carregar"> Carregar</button>
	</form>
</body>
</html>