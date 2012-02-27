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
Choose the classes you have taken:
</p>

<!--<CENTER><a href="resume.doc" target="_blank">Download My Resume!!</a></CENTER>-->

<Center>
<form method="post" action="classestaken.php">
  <?php
function dynamic_checkbox_table ($sql_str, $col_label, $col_label2, $val_checked){
/*
  Creates check boxes with data from a database.
	$sql_str, SQL select string to retrieve data from DB
	$col_label, DB column that has values for the first column 
	$col_label2, DB column that has values for the second column 
	$val_checked, value when checked
*/
	
	//connect DB and run query
	$db="a6548267_datdata";
	$db_user="a6548267_serious";
	$pass="csce492";
	$host="mysql6.000webhost.com";
	@mysql_connect($host,$db_user,$pass);
	@mysql_select_db($db) or die ("cannot connect to DB");
	$q_resultado = mysql_query($sql_str);
	mysql_close();
	if (mysql_num_rows($q_resultado)==0) exit("no rows returned");
	
	while(list($col_label,$col_label2,$val_checked)=mysql_fetch_row($q_resultado)){
    $checked = ($val_checked==1) ? 'checked="checked"' : '';
    echo '<br><tr><td>'.$col_label.$col_label2.'</td><td><input type="checkbox" name="taken[]" value="'.$col_label.$col_label2.'" '.$checked.'/></td></tr>'."\n";
  }
}

echo(dynamic_checkbox_table ("SELECT * FROM coreCS", "department", "number", "taken"));
?>
<br>
<input type="submit" value="Submit" />
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
