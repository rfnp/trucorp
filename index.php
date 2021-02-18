<?php

$conn = new mysqli("localhost","ubur","uburubur","Trucorp");
function tot ($conn) 
{
    $sql = "SELECT COUNT(`ID(PK)`) FROM users";
    $res = mysqli_query($conn,$sql);
    $rows = mysqli_fetch_row($res);
    return $rows[0];
}
tot($conn);

?>
