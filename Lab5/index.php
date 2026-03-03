<!DOCTYPE html>

<html>
<body>
    <h2>PHP Below:</h2>

    <div id='main'>
        <?php
        $greeting = "Hello World!";
        echo $greeting;

        $_POST["name"] = "Unsubmitted";
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
            <p>Are you a CS student?
            <input type="checkbox" name="CS">
            <input type="submit" value="Submit">
            </p>
        </form>
    </div>
</body>
</html>