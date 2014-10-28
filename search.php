<?php

include_once "database.php";

    $name = $_POST["name"];
    $min = $_POST["min"];
    $max = $_POST["max"];
    echo $name;
    $stmt = $DBH->prepare("SELECT * FROM product WHERE price > $min AND price < $max AND category = '" . $name . "'order by price asc");


    try {
        $stmt->execute();
        echo "success";
    } catch (PDOException $e) {
        echo "couldnt connect";
    }

    echo "<center><table border =1>
    <tr>
    <th>NameID</th>
    <th>Name</th>
    <th>Company</th>
    <th>Category</th>
    <th>Price</th>
    <th>Color</th>
    <th>Price</th>
   
    </tr>";
    while ($data = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr>";
        echo "<td>" . $data['nameid'] . "</td>";
        echo "<td>" . $data['name'] . "</td>";
        echo "<td>" . $data['company'] . "</td>";
        echo "<td>" . $data['category'] . "</td>";
        echo "<td>" . $data['price'] . "</td>";
        echo "<td>" . $data['color'] . "</td>";
        echo "<tr/>";
    }
    echo "</table></center>";


?>
