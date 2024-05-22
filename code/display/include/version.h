const char version_html[] PROGMEM = R"=====(<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
  <title>Shot-Clock-Versions</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="data:,">
  <style>
  html {
    font-family: Arial, Helvetica, sans-serif;
    text-align: center;
  }
  body {
    margin: 0;
  }
  .content {
    padding: 10px;
    max-width: 600px;
    margin: 0 auto;
  }
  </style>
<title>Shot-Clock-Versions</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="data:,">
</head>
<body>
  <div class="content">
    <h1>Versions</h1>
    <h2>Hardware</h2>
    PCB: %PCB_VERSION_PLACEHOLDER%
    <br>
    Board: %BOARD_VERSION_PLACEHOLDER%
    <br>
    <h2>Software</h2>
    Branch: %BRANCH_PLACEHOLDER%
    <br>
    Commit: %COMMIT_PLACEHOLDER%
  </div>
<script>
</script>
</body>
</html>
)=====";
