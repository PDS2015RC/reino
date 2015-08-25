
// Copyright 2011 William Malone (www.williammalone.com)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

var canvas;
var context;
var images = {};
var totalResources = 6;
var numResourcesLoaded = 0;
var fps = 30;
var x = 245;
var y = 185;
var breathInc = 0.1;
var breathDir = 1;
var breathAmt = 0;
var breathMax = 2;
var breathInterval = setInterval(updateBreath, 1000 / fps);
var maxEyeHeight = 14;
var curEyeHeight = maxEyeHeight;
var eyeOpenTime = 0;
var timeBtwBlinks = 4000;
var blinkUpdateTime = 200;                    
var blinkTimer = setInterval(updateBlink, blinkUpdateTime);
var fpsInterval = setInterval(updateFPS, 1000);
var numFramesDrawn = 0;
var curFPS = 0;
var has_helmet = false;
var helmet_name;
var has_armor = false;
var armor_name;
var has_shield = false;
var shield_name;
var has_weapon = false;
var weapon_name;

function updateFPS() {
	
	curFPS = numFramesDrawn;
	numFramesDrawn = 0;
}		
function prepareCanvas(canvasDiv, canvasWidth, canvasHeight, helmet, armor, shield, weapon)
{
	// Create the canvas (Neccessary for IE because it doesn't know what a canvas element is)
	canvas = document.createElement('canvas');
	canvas.setAttribute('width', canvasWidth);
	canvas.setAttribute('height', canvasHeight);
	canvas.setAttribute('id', 'canvas');
	canvasDiv.appendChild(canvas);
	if (helmet != "none") {
		has_helmet = true;
		helmet_name = helmet;
	};

	if (armor != "none"){
		has_armor = true;
		armor_name = armor;
	}

	if (shield != "none"){
		has_shield = true;
		shield_name = shield;
	}

	if (weapon != "none"){
		has_weapon = true;
		weapon_name = weapon;
	}


	if(typeof G_vmlCanvasManager != 'undefined') {
		canvas = G_vmlCanvasManager.initElement(canvas);
	}
	context = canvas.getContext("2d"); // Grab the 2d canvas context
	// Note: The above code is a workaround for IE 8and lower. Otherwise we could have used:
	//     context = document.getElementById('canvas').getContext("2d");
	
	loadImage("leftArm");
	loadImage("legs");
	loadImage("torso");
	loadImage("rightArm");
	loadImage("head");
	if(has_helmet == true) {
		loadImage(helmet);
	} else {
		loadImage("hair");
	}
	if(has_armor == true){
		loadImage(armor);
	}
	if(has_shield == true){
		loadImage(shield);
	}
	if(has_weapon == true){
		loadImage(weapon);
	}

}

function loadImage(name) {

  images[name] = new Image();
  images[name].onload = function() { 
	  resourceLoaded();
  }
  images[name].src = "/assets/" + name + ".png";
  images[name].name = name;
}

function resourceLoaded() {

  numResourcesLoaded += 1;
  if(numResourcesLoaded === totalResources) {
  
	setInterval(redraw, 1000 / fps);
  }
}

function change(part, name){
	images[part] = new Image();
	images[part].src = "/assets/" + name + ".png";
	images[part].name = name;
	setInterval(redraw, 1000 / fps);
}

function redraw() {
				
  canvas.width = canvas.width; // clears the canvas 

  drawEllipse(x + 40, y + 29, 160 - breathAmt, 6); // Shadow

  context.drawImage(images["leftArm"], x + 40, y - 42 - breathAmt);
  if (has_weapon == true) {
  	context.drawImage(images[weapon_name], x + 77, y - 55 - breathAmt);
  }
  context.drawImage(images["legs"], x, y);
  context.drawImage(images["torso"], x, y - 50);
  if (has_armor == true) {
  	context.drawImage(images[armor_name], x + 7, y - 45);
  }
  context.drawImage(images["head"], x - 10, y - 125 - breathAmt);
  if (has_helmet == false) {
  	context.drawImage(images["hair"], x - 37, y - 138 - breathAmt);
  };
  context.drawImage(images["rightArm"], x - 15, y - 42 - breathAmt);
  if (has_shield == true) {
  	context.drawImage(images[shield_name], x - 20, y - 42 - breathAmt);
  }
  
  if (has_helmet == true) {
  	context.drawImage(images[helmet_name], x - 17, y - 140 - breathAmt);
	}
  
  drawEllipse(x + 47, y - 68 - breathAmt, 8, curEyeHeight); // Left Eye
  drawEllipse(x + 58, y - 68 - breathAmt, 8, curEyeHeight); // Right Eye
  
  ++numFramesDrawn;
}

function drawEllipse(centerX, centerY, width, height) {

  context.beginPath();
  
  context.moveTo(centerX, centerY - height/2);
  
  context.bezierCurveTo(
	centerX + width/2, centerY - height/2,
	centerX + width/2, centerY + height/2,
	centerX, centerY + height/2);

  context.bezierCurveTo(
	centerX - width/2, centerY + height/2,
	centerX - width/2, centerY - height/2,
	centerX, centerY - height/2);
 
  context.fillStyle = "black";
  context.fill();
  context.closePath();	
}

function updateBreath() { 
				
  if (breathDir === 1) {  // breath in
	breathAmt -= breathInc;
	if (breathAmt < -breathMax) {
	  breathDir = -1;
	}
  } else {  // breath out
	breathAmt += breathInc;
	if(breathAmt > breathMax) {
	  breathDir = 1;
	}
  }
}

function updateBlink() { 
				
  eyeOpenTime += blinkUpdateTime;
	
  if(eyeOpenTime >= timeBtwBlinks){
	blink();
  }
}

function blink() {

  curEyeHeight -= 1;
  if (curEyeHeight <= 0) {
	eyeOpenTime = 0;
	curEyeHeight = maxEyeHeight;
  } else {
	setTimeout(blink, 10);
  }
}

function getChar() {
	document.write(images['hair'].name)
}