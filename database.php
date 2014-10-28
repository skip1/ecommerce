
<?php
    
$host = 'localhost';
$dbname = 'products';
$user = 'sk';
$pass = 'sk';
try {
  $DBH = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
  $DBH->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_SILENT);
echo "connected";
} catch (PDOException $e) {

  echo $e->getMessage();
}
