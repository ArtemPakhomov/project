<?php
include 'model.php'
?>
<html>
<head>
    <meta charset="UTF-8">
    <title>Table</title>
</head>
<style>
    .shops{
        background: rgba(184, 245, 206, 0.5);;
        padding: 10px;
        margin: 15px;
        border: 1px solid black;
        border-radius: 10px;
        display: inline-block;
    }
</style>
<body>
<h1>Hello Table</h1>
<div>
    <div style="float: left">
        <table border="1" cellpadding=4px cellspacing="4px">
            <tr>
                <td>№</td>
                <td>Дата</td>
                <td>Компания</td>
                <td>Посетители, чел</td>
                <td>Покупки, ед</td>
                <td>Прибыль, руб</td>
            </tr>
            <?php
            foreach ($dateTable as $arRow)
            {
                echo ' <tr style="width: 10px"><td style="width: 10px">'. implode('</td><td>',$arRow).'</td></tr>';
            }
            ?>
        </table>
    </div>

    <div style="display: inline-block; border-radius: 10px; border: 1px solid black; margin-left: 10px; padding: 5px" >
        <form action="model.php" method="post" style="margin-bottom: auto" >
            Начальная дата: <input type="date" name="min" >
            Конечная дата: <input type="date" name="max">
            <input type="submit" value="Отправить">
        </form>
    </div>
</div>

<div style="position: relative; display: inline-block">
    <?php
           foreach ($sum as $key => $value):
                echo '<div class="shops">
                            <div> Компания: '.$key.'</div>
                            <div> Выручка: '.$value.' руб</div>
                       </div>';
          endforeach;
    ?>
</div>
</body>
</html>