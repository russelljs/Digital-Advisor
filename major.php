

<html>
<body>


Your current major is <?php echo $_POST["major"]; ?>
<br />


<?php
  $aClass = $_POST['classestaken'];
  function listClasses($aClass){
    if(empty($aClass)){
      echo("nothing");
    }
    else{
      for ($i=0; $i<count($aClass); $i++){
        echo($aClass[$i] . " ");
      }
    }
  }
?>

And you have taken <?php listClasses($_POST["classestaken"]); ?>

</body>
</html>
