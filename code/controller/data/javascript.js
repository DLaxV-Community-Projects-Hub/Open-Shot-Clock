  var piep = new Audio("/piep.mp3");
  var longpiep = new Audio("/longpiep.mp3");
  //var piep = new Audio("piep.mp3");
  //var longpiep = new Audio("longpiep.mp3");
  var aonoff = false;
  var ZeroFlag = true;
  var gateway = `ws://${window.location.hostname}/ws`;
 // var gateway = `ws://192.168.4.1/ws`;
  var websocket;
  
 /* alert("Sie befinden sich auf dem Host " + window.location.hostname);*/
  
  window.addEventListener('load', onLoad);
  function initWebSocket() {
    console.log('Trying to open a WebSocket connection...');
    websocket = new WebSocket(gateway);
    websocket.onopen    = onOpen;
    websocket.onclose   = onClose;
    websocket.onmessage = onMessage; // <-- add this line
  }
  function onOpen(event) {
    console.log('Connection opened');
    const clock = document.getElementById('clock');
	clock.innerHTML = "--";
	websocket.send('SW');
  }
  function onClose(event) {
    console.log('Connection closed');
    setTimeout(initWebSocket, 2000);
  }
  
  function handleClock(data) {
	const clock = document.getElementById('clock');
	const number = parseInt(data);
	
	if (number < 10) {
		var c = "0" + number;
		clock.innerHTML = c;
	} else {
		clock.innerHTML = number;
	}
	
	if (number <= 0) {
		const playPauseButton = document.getElementById('playpause-button');
		if (aonoff) {
			if (ZeroFlag) {
				longpiep.play();
				ZeroFlag = false;
			}
		}
		clock.className = "number is-red";
		playPauseButton.disabled = true;
		playPauseButton.className = "pp-is-disabled";  //vorher "pp-button pp-is-disabled"
	} else if (number <= 7 && number > 0) {
		if (aonoff) {
		   piep.play();
		}
		clock.className = "number is-red";
	} else {
		clock.className = "number";
		ZeroFlag = true;
	}
  }
  
  function handlePlayPauseButton(data) {
	const playPauseButton = document.getElementById('playpause-button');
	
	
	if (data == "true") {
		playPauseButton.innerHTML = "Pause";
		playPauseButton.className = "pp-button";
		playPauseButton.disabled = false;
	} else {
		playPauseButton.innerHTML = "Play";
		playPauseButton.className = "pp-button pp-is-active";
	}
  }
  
  function onMessage(event) {
	const data = event.data;
	
	if (data == "true" || data == "false") {
		handlePlayPauseButton(data);
		
	} else if (data.includes("SW")) {
		const SW = data.substring(2);
	    showStartTimeButton(parseInt(SW));	
	
	} else {
		handleClock(data);
	}
  
  }
  
  function onLoad(event) {
    initWebSocket();
    initButtons();
	document.addEventListener("touchstart", function(){}, true);
  }
  
  function initButtons() {
	initButtonsSpecial();  
  }
  
  function reset() {
    websocket.send('reset');
  }
  
  function playPause() {
	websocket.send('playpause');
  }

  function showStartTimeButton(data) {
	   if (data  == 30) {
			const setTime30button = document.getElementById('setTime30-button');
			setTime30button.className = "settime-button settime-is-active";
	  }	else {
			const setTime30button = document.getElementById('setTime30-button');
			setTime30button.className = "settime-button";
	  }		  
  }

  function setTimeMinus10() {
	websocket.send('setTimeMinus10');
	//showStartTimeButton(24);
  }

  function setTimeMinus1() {
	websocket.send('setTimeMinus1');
	//showStartTimeButton(24);
  }

  function setTime30() {
	websocket.send('setTime30');
	//showStartTimeButton(30);

  }
  
  function setTimePlus1() {
	websocket.send('setTimePlus1');
	//showStartTimeButton(60);
  }
  
  function setTimePlus10() {
	websocket.send('setTimePlus10');
	//showStartTimeButton(60);
  }  
    
  
  function audioonoff() {
	const audiobutton = document.getElementById('audio-button');
    piep.play();
	piep.pause();
    longpiep.play();
	longpiep.pause();
	
    if (aonoff) {
		aonoff = false;
		audiobutton.className = "a-button";
	} else {
		aonoff = true;
		audiobutton.className = "a-button a-is-active";
	}
  }