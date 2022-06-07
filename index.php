<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Searcher</title>
    <link rel="stylesheet" href="null.css">
    <script defer src="jquery-3.6.0.js"></script>
    <script defer src="ajax.js"></script>
</head>
<body>
<form id='ajax_form' action='index.php' method='POST'>
    <div class="main">
        <div class="field">
            <p><label for="n">Name</label>
                <input type="text" name="name" id="name"/></p>
        </div>
        <div class="field">
            <p><label for="ln">Surname</label>
                <input type="text" name="surname" id="surname"/></p>
        </div>
        <div class="field">
            <p><label for="a">Phone number</label>
                <input type="text" name="phone" id="phone"/></p>
        </div>
        <div class="button">
            <input name="search" type="submit" value="Search" id="search" class="action-button">
            <input name="insert" type="submit" value="Insert" id="insert" class="action-button">
        </div>
        <div id="result"></div>
	</div>
</form>
</body>
</html>
