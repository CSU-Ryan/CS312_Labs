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

    <div id="response">
        <?php
            echo "Your name is: " . $_POST["name"] . "!";
        ?>
    </div>

    <div id="form2">
        <form method='GET'>
            <h2>Are you a CS student?</h2>
            <input type="checkbox" name="CS">
        </form>
    </div>
</body>
</html>