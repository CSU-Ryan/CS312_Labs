<!DOCTYPE html>

<html>
<body>
    <h2>PHP Below:</h2>

    <div id='main'>
        <?php
        $greeting = "Hello World!";
        echo $greeting;
        ?>
    </div>

    <div id="form">
        <form method='POST'>
            <h2>Please input your name:</h2>

            <input type="text" name="name">

            <input type="submit" value="Submit Name">
        </form>
    </div>
</body>
</html>