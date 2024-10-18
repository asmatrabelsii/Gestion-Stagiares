<?php		
	try {
		
	    $con = new PDO("mysql:host=localhost;dbname=ges-stag","root", "");
		
	}
	catch (Exception $e) {
		die('Erreur : ' . $e->getMessage());
	}	
?>