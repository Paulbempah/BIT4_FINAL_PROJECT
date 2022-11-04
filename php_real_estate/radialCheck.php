<?php
// calculate distance by radius 
$sql_distance = $having = "";
if(!empty($sql_distance_km) && !empty($lattitude) && !empty($longitude)){
    $radius_km = $distance_km;
    $sql_distance = " ,(((acos(sin
    ((".$latitude. "*pi()/180)) * sin((`p
    `.`latitude`*pi()/180))+cos((". $latitude. 
    "*pi()/180))*cos((`p`.latitude `*pi()/180)) * cos(((".$longitude."-`p`.`longitude`)*pi()/180))))*180/pi())*60*1.1515 * 1.609344) as distance ";
    $having = "HAVING (distance <= $radius_km) ";
    $order_by = ' distance ASC ';
}else{
    $order_by = ' p.id DESC ';
}
//fetch places from database 
$sql= "SELECT p.*".$sql_distance"FROM place p