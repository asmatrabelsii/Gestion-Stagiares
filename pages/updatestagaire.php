<?php
	require_once('session.php');
?>

<?php
	require_once('connexion.php');
	
	$id=$_POST['ID'];
	$nom=$_POST['NOM'];
	$prenom=$_POST['PRENOM'];
	$id_filiere=$_POST['ID_FILIERE'];	
	$civilite=$_POST['civilite'];
	$date_debut=$_POST['DATE_DEBUT'];
	$date_fin=$_POST['DATE_FIN'];
	$nomPhoto= $_FILES['PHOTO']['name'];	
	$imageTmp=$_FILES['PHOTO']['tmp_name'];

	move_uploaded_file($imageTmp,'../images/'.$nomPhoto);
			
	if(!empty($nomPhoto)){ 
		$requete="UPDATE STAGIAIRE SET NOM=?,PRENOM=?,ID_FILIERE=?,PHOTO=?,CIVILITE=?,DATE_DEBUT=?,DATE_FIN=? where id=?";
		$param=array($nom,$prenom,$id_filiere,$nomPhoto,$civilite,$date_debut,$date_fin,$id);		
	}
	else{
		$requete="UPDATE STAGIAIRE SET NOM=?,PRENOM=?,ID_FILIERE=?,CIVILITE=?,DATE_DEBUT=?,DATE_FIN=? where id=?";
		$param=array($nom,$prenom,$id_filiere,$civilite,$date_debut,$date_fin,$id);
	}
	$resultat = $con->prepare($requete);	
	$resultat->execute($param);	
	
	header("location:stagiaires.php");
?>