<?php
	$data=array();
	echo $data;
	
	for ($i=0; $i <16 ; $i++) { 
		$data[$i]=array();
		for($j=0;$j<$i;$j++){
			$data[$i][]=$j;
		}
	}
	
//	for ($i=0; $i < $data.length; $i++) { 
//		for ($j=0; $j < $i; $j++) { 
//			echo "第".($i+1)."题的答案".$j."<br>";
//		}
//	}
	
	foreach ($data as $i) {
		foreach ($i as $j) {
			
		}
	}
?>