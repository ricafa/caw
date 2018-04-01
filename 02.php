<?php
	$qtdJogos = 3;
	function jogarLotoFacil(){
		$numeros = [];
		while(count($numeros)<15)
			if(!in_array($gerado= mt_rand(1,25),$numeros))
				$numeros[]=$gerado;
		sort($numeros);
		return $numeros; 
	}

	function sorteados(){
		return ['01','04','05','06','09','10','11','12','19','20','21','22','23','24','25'];
	}

	function marcarNumero($numero, $escolhidos){
		if(in_array($numero, sorteados()))
			return 'sorteado';
		elseif(in_array($numero,$escolhidos))
			return 'escolhido';
	}

	function vencedor($escolhidos){
		return count(array_diff($escolhidos,sorteados()))==0;
	}

?>
<style>
	.sorteado {background-color: green;}
	.escolhido{background-color: gray;}
</style>
<span class="sorteado">Sorteado</span><br/>
<span class="escolhido">Escolhido</span>
<?php for ($i=0; $i < $qtdJogos; $i++) {  ?>
<br/><br/><br/>
<table>
	<caption>LOTOFÁCIL</caption>
	<tbody>
		<?php 
				$escolhidos = jogarLotoFacil();
				$cont=1;
				echo '<tr>';
				while($cont<26)
				{
					echo "<td class='".marcarNumero($cont,$escolhidos)."'>$cont</td>";
					if($cont%5==0) echo '</tr><tr>';
					$cont+=1;
				}
		?>
	</tbody>
</table>
<?php } ?>