const char channel_html[] PROGMEM = R"=====(<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
  <title>Shot-Clock-Channel</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="data:,">
  <style>
  html {
    font-family: Arial, Helvetica, sans-serif;
    text-align: center;
    background-color: black;
  }
  h1 {
    font-size: 2,5rem;
    color: rgb(255, 255, 255);
    background-color: #000000;
  }


  body {
    margin: 0;
  }
  .content {
    padding: 30px;
    max-width: 600px;
    margin: 0 auto;
    background-color: black;
  }
  /*.link-as-button {
    display: block;
    padding: 15px 50px;
    font-size: 24px;
    text-align: center;
    outline: none;
    color: #fff;
    background-color: #0f8b8d;
    border: none;
    border-radius: 5px;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
   }
  
   .link-as-button:active {
     background-color: #0f8b8d;
     box-shadow: 2 2px #CDCDCD;
     transform: translateY(2px);
   }
   .active-channel {
     font-size: 1.5rem;
     color:#8c8c8c;
     font-weight: bold;
   }*/
.pp-button {
	height: 66px;
    /* width: 90px;  */
    font-size: 36px;
    padding-top: 22px;
    text-align: center;
	text-decoration: none;
    outline: none;
    color: rgba(255, 165, 0, 1);
    background-color: rgba(255, 165, 0, 0.2);
	border: 3px solid black;
	border-radius: 44px;
	box-shadow: 0px 0px 0px 5px rgba(255, 165, 0, 0.2);
	margin-bottom: 16px;
    display: block;
  } 
  
  .pp-button:active {
    background-color: rgba(255, 165, 0, 0.15);
	box-shadow: 0px 0px 0px 2px rgba(255, 165, 0, 0.15);
  }
  
  .pp-is-active {
	color: rgba(0, 255, 0, 1);
    background-color: rgba(0, 255, 0, 0.2);
	box-shadow: 0px 0px 0px 5px rgba(0, 255, 0, 0.2);
  }
  
  .pp-is-active:active {
    background-color: rgba(0, 255, 0, 0.15);
	box-shadow: 0px 0px 0px 2px rgba(0, 255, 0, 0.15);

  </style>
<title>Shot-Clock-Channel</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="data:,">
</head>
<body>
  <div>
    <h1>Channel Selection</h1>
  </div>
  <div class="content">
    %LINKPLACEHOLDER%
  </div>
<script>
</script>
</body>
</html>
)=====";
