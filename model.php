<?php
class model
{
    public static function getTable(){
        $dbUser = "root";
        $dbPassword = "";
        $dbHost = "localhost";
        $dbName = "tblbase";
        global $base;
        $base = new mysqli($dbHost, $dbUser, $dbPassword,$dbName);//Подключение базы данных
        $sql = "SELECT * FROM `report`";
        $baseResult = $base ->query($sql);
        global $base;
        $arResult = [];
        $sql = "SELECT * FROM `report`";
        if ($baseResult = $base ->query($sql)){
            while ($arRow = $baseResult->fetch_assoc()){
                $arResult[] = $arRow;
            }
        }
        return $arResult;
    }
}
class date
{
    public static function getDate($min,$max){
        $table = model::getTable();
        $res = [];
        foreach ($table as $arRow){
            if ($min<=$arRow['date']and $arRow['date']<=$max){
                $res[] = $arRow;
            }
        }
        return $res;
    }
}
$i = 0;
$result = [];
if (isset($_POST['min']) and isset($_POST['max'])){
    $min = $_POST['min'];
    $max = $_POST['max'];
    $dateTable = date::getDate($min,$max);
    return array($dateTable);
}else{
    $dateTable =  model::getTable();
}
foreach ($dateTable as $arRow){
    if (!isset($result[$arRow['name_shop']])){
        $result[$arRow['name_shop']] = [];
    }
    $result[$arRow['name_shop']][] = $arRow['proceeds'];
}
$sum = array();
foreach ($result as $key => $name){
    $sum[$key] = array_sum(array_map(function ($row){
        return $row;
    }, $name));
}
return array($sum,$dateTable);
?>

