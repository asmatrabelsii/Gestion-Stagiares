<?php
	require_once('session.php');
?>

<?php
	require_once('connexion.php');
	
	if(isset($_POST['ID']))
		$id=$_POST['ID'];
	else
		$id=0;
	
	if(isset($_POST['LOGIN']))
		$login=$_POST['LOGIN'];
	else
		$login="";
	
	if(isset($_POST['EMAIL']))
		$email=$_POST['EMAIL'];
	else
		$email="";
	
	if(isset($_POST['ROLE']))
		$role=$_POST['ROLE'];
	else
		$role="";
	
	if(isset($_POST['ETAT']))
		$etat=$_POST['ETAT'];
	else
		$etat="";

	$requete="select * from utilisateur where EMAIL=? and id<>?";		
	$param=array($email,$id);	
	$resultat = $con->prepare($requete);		
	$resultat->execute($param);

	if($user=$resultat->fetch()){
		$_SESSION['erreurEmailExiste']="<strong>Erreur!</strong> Cette adresse Email existe deja!!!";
        header("Location:editerUtilisateur.php?id=$id");
	}else{
		if($_SESSION['user']['ROLE']=="ADMIN") {
			$requete="update utilisateur set login=?,role=?,email=?,etat=? where id=?";	
			$param=array($login,$role,$email,$etat,$id);
			$resultat = $con->prepare($requete);		
			$resultat->execute($param);	
			header("location:utilisateurs.php");
		}else{
			$requete="update utilisateur set login=?,email=?where id=?";	
			$param=array($login,$email,$id);
			$resultat = $con->prepare($requete);		
			$resultat->execute($param);	
			header("location:login.php");	
		}
	}
?>