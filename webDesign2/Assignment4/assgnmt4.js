	var theCanvas = document.getElementById('monsterGame');
	theCanvas.width = 500;
	theCanvas.height = 500;
	var ctx = theCanvas.getContext("2d");
	ctx.font = "13pt Georgia";
	ctx.strokeStyle ="#FEB31A";
	ctx.fillStyle="#FEB31A";
	var myMiss = document.getElementById('miss');
	var myscore = document.getElementById('score');
	var mySpeed = document.getElementById('speed');
	var btnExit = document.getElementById("btnExit");
	var btnRules= document.getElementById("rules");
	var btnPlay= document.getElementById("play");

//controls
	var intervalHandle;
	var gameOn=0;//when equals to one the game is playing
	var drawCaught=0;//display pic of monster caught
	var intervalNew;
	var v=0; //how many times monster was drawn
	var resultCalled=0;//if the winning or losing message was displayed
	var maxPoints=20;//catch this number of monsters to win


//variables
	var monstersCaught = 0; //count how many monsters were caught
	var miss=0;//count clicks on empty screen
	var intervalMax=3000;
	var theString='';
	var x_left;
	var y_top;
	var	x_right;
	var y_buttom;

//functions
	var main;
	var update;
	var render;
	var clearAll;
	var resetSpeed;
	var resetMonster;
	var displayWinning;
	var displayLosing;
	//click
	//press button Exit
	//press button Play
	//press button Rules

//monster image
	var monsterReady = false;
	var monsterCaughtReady = false;
	var monsterCaughtImage = new Image();
		monsterCaughtImage.src='images/pig_caught.jpg';
		monsterCaughtImage.onload = function () {
		monsterCaughtReady=true;
	};
	var monsterImage = new Image();
	monsterImage.src='images/pig.jpg';
	monsterImage.onload = function () {
	monsterReady=true;
	};

//game object - monster
	monster = {
		x: 0,
		y: 0
	}
	monsterCaught = {
		x: 0,
		y: 0
	}

//display rules
	btnRules.onclick = function () {
		clearAll();
		var theString1="1. To catch the monster click on him when he appears.";
		var theString2="2. Speed increases with every 3 monsters you catch.";
		var theString21="    Highest speed is 3000, lowest is 800";
		var theString3="3. You win if you catch 20 monsters.";
		var theString4="4. You lose if you miss more than you catch.";
		ctx.fillText(theString1, 45,60);
		ctx.fillText(theString2, 45,90);
		ctx.fillText(theString21, 45,120);
		ctx.fillText(theString3, 45,150);
		ctx.fillText(theString4, 45,180);
	};

//stop/exit game
	btnExit.onclick = function() {
		clearAll();
		theString="Goodbye!";
		ctx.fillText(theString, 45,60);
	};

//play the game
	btnPlay.onclick = function () {
		clearAll();
		monstersCaught = 0;
		intervalMax=3000;
		gameOn=1;
		v=0;
		resetMonster();
		render();
		resetSpeed();
	};

//main game loop
	main = function () {
		update();
	};

//update
	update= function () {
		gameOn=1;
		if(monstersCaught>=0 && monstersCaught<3) {
			intervalMax=3000;
			resetSpeed();
		}
		if (monstersCaught>=3 && monstersCaught<6) {
				intervalMax=2000;
				resetSpeed();
			}
		if ( monstersCaught>=6 && monstersCaught<9) {
				intervalMax=1500;
				resetSpeed();
		}
			if ( monstersCaught>=9 && monstersCaught<12) {
				intervalMax=1000;
				resetSpeed();
		}
			if ( monstersCaught>=12 && monstersCaught<15) {
					intervalMax=900;
					resetSpeed();
		}
			if ( monstersCaught>=15) {
					intervalMax=800;
					resetSpeed();
		}
		ctx.clearRect(0, 0, 500, 500);
		resetMonster();
		render();
	};

//draw objects
	render = function () {
		if (drawCaught==1) {
		if (monsterCaughtImage) {
			ctx.drawImage(monsterCaughtImage, monsterCaught.x, monsterCaught.y);
			intervalMax=300;
			resetSpeed();
			drawCaught=0;
		}} else {
			if (monsterImage) {
				ctx.clearRect(0, 0, 500, 500);
				ctx.drawImage(monsterImage, monster.x, monster.y);
				v++;
		}}
		if (monstersCaught==maxPoints) {
				if (gameOn==1) {
					displayWinning();
		}}
		myscore.innerHTML = monstersCaught;
		//theString="the number of times monster jumped = "+v; //checking jumps
		//ctx.fillText(theString, 45,30);
		if (gameOn==1){
		mySpeed.innerHTML="speed: "+intervalMax;
		if (resultCalled<1 && miss>0) {
					myMiss.innerHTML = "missed: "+miss;
		}
		var result = miss-monstersCaught;
					if (monstersCaught<miss && result==1) {
					displayLosing();
		}}
	};

//click event
	theCanvas.addEventListener('click', doClick, false);
	function doClick(e) {
		if (gameOn==1){
		var theCanvas_top=e.pageY;
		var theCanvas_left=e.pageX;
		//var theCanvas_top=e.y;
		//var theCanvas_left=e.x;
		//theCanvas_top -= theCanvas.offsetTop;//Top-document.body.scrollTop;
		//theCanvas_left -= theCanvas.offsetLeft;//Left-document.body.scrollLeft;

		theCanvas_top -= theCanvas.offsetTop+document.body.offsetTop;//Top-document.body.scrollTop;
		theCanvas_left -= theCanvas.offsetLeft;//Left-document.body.scrollLeft;
		//var hint=document.getElementById("hint"); //checking clicks
		//hint.innerHTML=("offsetTop="+theCanvas_top+" body.offsetTop="+document.body.offsetTop);


		if (theCanvas_top <= y_buttom &&  theCanvas_top >= y_top &&
			theCanvas_left <= x_right && theCanvas_left>= x_left) {
				++monstersCaught;
				monsterCaught.x = monster.x;
				monsterCaught.y = monster.y;
				drawCaught=1;
				gameOn=0;
				resetMonster();
		} else {
				miss++;
		}
		render();
		}}

//clear all
	clearAll = function () {
		miss=0;
		v=0;
		gameOn=0;
		resultCalled=0;
		monstersCaught = '';
		myMiss.innerHTML = "";
		mySpeed.innerHTML="";
		clearInterval(intervalHandle);
		render();
		ctx.clearRect(0, 0, 500, 500);
	}

//set speed
	resetSpeed = function() {
		clearInterval(intervalHandle);
		intervalHandle=setInterval(main, intervalMax);
	}

//reset monster
//reset the game when the palyer catches the monster and
//throw the monster somewhere on the screen randomly
	resetMonster = function () {
		monster.x = 5+ (Math.random() * (theCanvas.width - 43));
		monster.y = 5+ (Math.random() * (theCanvas.height - 54));

		//position of the monster
		x_left = monster.x;
		x_right = monster.x+38;
		y_top = monster.y;
		y_buttom = monster.y+49;
	};

//display winning message
 displayWinning = function() {
		clearInterval(intervalHandle);
		resultCalled=1;
		gameOn=0;
		ctx.clearRect(0, 0, 500, 500);
		theString="Congratulations! You have won!";
		ctx.fillText(theString, 45,60);
};

//display losing message
displayLosing = function() {
		clearInterval(intervalHandle);
		ctx.clearRect(0, 0, 500, 500);
		resultCalled=1;
		gameOn=0;
		theString="Sorry, you have lost.";
		ctx.fillText(theString, 45,60);
		theString="You missed more monsters than you caught.";
		ctx.fillText(theString, 45,90);
		theString="caught: "+monstersCaught+"     missed: "+miss;
		ctx.fillText(theString, 45,120);
};