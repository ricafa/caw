<?php

	class LotoFacil{

		public function lerTxt($filename)
		{
			$file = file($filename);
			$arq = [];			
			//foi usado for para pular a primeira linha sem precisar fazer if
			for ($i=1; $i < count($file) ; $i++) {
				$arq[$i]['nome'] 		 = substr($file[$i], 234, 40);
				$arq[$i]['endereco'] = substr($file[$i], 274, 49);
			}			 
			return $arq;
		}

		public function arrayToCsv($array){
			header("Content-type: application/csv");   
			header("Content-Disposition: attachment; filename=file.csv");   
			header("Pragma: no-cache");

			$arq = '';
			foreach ($array as $numlinha => $linha)
				$arq .= implode(';',$linha).";\n";
			echo $arq;
		}
	}

	//$lf= new LotoFacil;
	//$array = $lf->lerTxt('teste.txt');
	//$lf->arrayToCsv($array);
	
?>