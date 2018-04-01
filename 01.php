<?php 
	
	function jogarLotoFacil(){
		$numeros = [];
		while(count($numeros)<15)
			if(!in_array($gerado= mt_rand(1,25),$numeros))
				$numeros[]=$gerado;
		sort($numeros);
		return $numeros; 
	}

	var_dump(jogarLotoFacil());
?>