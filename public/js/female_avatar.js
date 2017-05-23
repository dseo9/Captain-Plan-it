
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
var totalResources = 9;
var numResourcesLoaded = 0;
var fps = 40;
var charX = 245;
var charY = 185;
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
var winking = false;
//var jumping = false;

function updateFPS() {
	
	curFPS = numFramesDrawn;
	numFramesDrawn = 0;
}
function prepareCanvas(canvasDiv, canvasWidth, canvasHeight)
{
	// Create the canvas (Neccessary for IE because it doesn't know what a canvas element is)
	canvas = document.createElement('canvas');
	canvas.setAttribute('width', canvasWidth);
	canvas.setAttribute('height', canvasHeight);
	canvas.setAttribute('id', 'canvas');
	canvasDiv.appendChild(canvas);
	
	if(typeof G_vmlCanvasManager != 'undefined') {
		canvas = G_vmlCanvasManager.initElement(canvas);
	}
	context = canvas.getContext("2d"); // Grab the 2d canvas context
	// Note: The above code is a workaround for IE 8and lower. Otherwise we could have used:
	//     context = document.getElementById('canvas').getContext("2d");
	
	canvas.width = canvas.width; // clears the canvas 
	context.fillText("loading...", 40, 140);
	
	loadImage("female_hair1");
	loadImage("female_body1");	
	loadImage("female_lefteye");
	loadImage("female_righteye");
	loadImage("female_mouth");
	loadImage("female_head1");
	loadImage("female_top1");
	loadImage("female_bottom1");
	loadImage("female_leftwink");
	//loadImage("female_rightwink");
}

function loadImage(name) {

  images[name] = new Image();
  images[name].onload = function() { 
      resourceLoaded();
  }
  images[name].src = "Images/images/" + name + ".png";
}

function resourceLoaded() {

  numResourcesLoaded += 1;
  if(numResourcesLoaded === totalResources) {
    setInterval(redraw, 1000 / fps);
  }
}

var context = document.getElementById('canvas').getContext("2d");


var charX = 200;
var charY = 200;
  
function redraw() {

  var x = charX;
  var y = charY;

  canvas.width = canvas.width; // clears the canvas 
  

  context.drawImage(images["female_body1"], x - 200, y - 140 - breathAmt);
  context.drawImage(images["female_bottom1"], x - 200, y - 140 - breathAmt);
  context.drawImage(images["female_top1"], x -200, y - 140 - breathAmt);
  context.drawImage(images["female_head1"], x - 200, y - 140 - breathAmt);
  context.drawImage(images["female_mouth"], x - 200, y - 140 - breathAmt);
  context.drawImage(images["female_righteye"], x -200, y - 140 - breathAmt);
  context.drawImage(images["female_hair1"], x - 200, y - 140 - breathAmt);
  
  if (winking) {
	  context.drawImage(images["female_leftwink"], x - 200, y - 140 - breathAmt);
  }else{
	   context.drawImage(images["female_lefteye"], x - 200, y - 140 - breathAmt);
  }
  
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

function wink() {
                        
  if (!winking) {
    winking = true;
    setTimeout(land, 500);
  }
}

function land() {
                        
  winking = false;
}