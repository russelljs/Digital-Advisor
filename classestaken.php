<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<meta name="description" content="" />

<meta name="keywords" content="" />

<meta name="author" content="" />

<link rel="stylesheet" type="text/css" href="style.css" media="screen" />

<title>Digital Advisor</title>

</head>

	<body>

		<div id="wrapper">

<div id="header">

	<pic>
	<CENTER><img src="herpderp.jpg" alt="header" class="center"/></CENTER>
	</pic>

</div> <!-- end #header -->

<div id="nav">

	<a href="index.html">Home</a>
	<a href="account.html">Account</a>
	<a href="Filler.html">Filler</a>
    <a href="somethingsomething.html">Something</a>
</div> <!-- end #nav -->

<div id="content">

<h1>Welcome to Digital Advisor!</h1>
<p>

</p>

<!--<CENTER><a href="resume.doc" target="_blank">Download My Resume!!</a></CENTER>-->

<Center>
<?php
  $aClass = $_POST['taken'];
  function listClasses($aClass){
    if(empty($aClass)){
      echo("nothing");
    }
    else{
      for ($i=0; $i<count($aClass); $i++){
        echo($aClass[$i] . "<br>");
      }
    }
  }
?>

You have taken:<br> <?php listClasses($_POST["taken"]); ?>
</Center>
<p>

</p>


</div> <!-- end #content -->



<div id="footer">
	<p>Copyright &copy 2012 Serious Business</a></p>
</div> <!-- end #footer -->

		</div> <!-- End #wrapper -->

	</body>

</html>

