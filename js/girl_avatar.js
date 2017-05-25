// inner variables
var canvas, ctx;
var oSkin, oHair, oTop, oBottom, oAccessories;
var iSel = 0;
// -------------------------------------------------------------

// objects :
function Skin(x, y, x2, y2, w, h, image) {
    this.x = x;
    this.y = y;
    this.x2 = x2;
    this.y2 = y2;
    this.w = w;
    this.h = h;
    this.image = image;
    this.iSpr = 0;
}
function Hair(x, y, x2, y2, w, h, image) {
    this.x = x;
    this.y = y;
    this.x2 = x2;
    this.y2 = y2;
    this.w = w;
    this.h = h;
    this.image = image;
    this.iSpr = 0;
}
function Top(x, y, x2, y2, w, h, image) {
    this.x = x;
    this.y = y;
    this.x2 = x2;
    this.y2 = y2;
    this.w = w;
    this.h = h;
    this.image = image;
    this.iSpr = 0;
}
function Bottom(x, y, x2, y2, w, h, image) {
    this.x = x;
    this.y = y;
    this.x2 = x2;
    this.y2 = y2;
    this.w = w;
    this.h = h;
    this.image = image;
    this.iSpr = 0;
}

function Accessories(x, y, x2, y2, w, h, image) {
    this.x = x;
    this.y = y;
    this.x2 = x2;
    this.y2 = y2;
    this.w = w;
    this.h = h;
    this.image = image;
    this.iSpr = 0;
}
// -------------------------------------------------------------

// draw functions :
function clear() { // clear canvas function
    ctx.clearRect(0, 0, ctx.canvas.width, ctx.canvas.height);
}

function drawScene() { // main drawScene function
    clear(); // clear canvas

    // draw Skin
    ctx.drawImage(oSkin.image, oSkin.x2 + oSkin.iSpr*oSkin.w, oSkin.y2, oSkin.w, oSkin.h, oSkin.x, oSkin.y, oSkin.w, oSkin.h);

    // draw Hairs
    ctx.drawImage(oHair.image, oHair.x2 + oHair.iSpr*oHair.w, oHair.y2, oHair.w, oHair.h, oHair.x, oHair.y, oHair.w, oHair.h);

    // draw Top
    ctx.drawImage(oTop.image, oTop.x2 + oTop.iSpr*oTop.w, oTop.y2, oTop.w, oTop.h, oTop.x, oTop.y, oTop.w, oTop.h);

    // draw Bottom
    ctx.drawImage(oBottom.image, oBottom.x2 + oBottom.iSpr*oBottom.w, oBottom.y2, oBottom.w, oBottom.h, oBottom.x, oBottom.y, oBottom.w, oBottom.h);

	// draw accessories
    ctx.drawImage(oAccessories.image, oAccessories.x2 + oAccessories.iSpr*oAccessories.w, oAccessories.y2, oAccessories.w, oAccessories.h, oAccessories.x, oAccessories.y, oAccessories.w, oAccessories.h);

    // draw controls
    ctx.textAlign = 'center';
    ctx.fillStyle = '#FFF';

    ctx.font = '30px Verdana';
    if (iSel == 0)
        ctx.font = 'bold 30px Verdana';
    ctx.fillText('< Skin >', 400, 80);

    ctx.font = '30px Verdana';
    if (iSel == 1)
        ctx.font = 'bold 30px Verdana';
    ctx.fillText('< Hair >', 400, 180);

    ctx.font = '30px Verdana';
    if (iSel == 2)
        ctx.font = 'bold 30px Verdana';
    ctx.fillText('< Top >', 400, 280);

    ctx.font = '30px Verdana';
    if (iSel == 3)
        ctx.font = 'bold 30px Verdana';
    ctx.fillText('< Bottom >', 400, 380);

	ctx.font = '30px Verdana';
    if (iSel == 4)
        ctx.font = 'bold 30px Verdana';
    ctx.fillText('< Accessories >', 400, 480);
}

// -------------------------------------------------------------

// initialization

$(function(){
  if (canvas = document.getElementById('scene')){
    ctx = canvas.getContext('2d');

    // initialization of dragon
    var oSkinImage = new Image();
    oSkinImage.src = 'images/avatar_images/images/female_skin.png';
    oSkinImage.onload = function() {};


  var oHairImage = new Image();
    oHairImage.src = 'images/avatar_images/images/female_hair.png';
    oHairImage.onload = function() {};

  var oTopImage = new Image();
    oTopImage.src = 'images/avatar_images/images/female_top.png';
    oTopImage.onload = function() {};

  var oBottomImage = new Image();
    oBottomImage.src = 'images/avatar_images/images/female_bottom.png';
    oBottomImage.onload = function() {};

  var oAccessoriesImage = new Image();
    oAccessoriesImage.src = 'images/avatar_images/images/female_accessories.png';
    oAccessoriesImage.onload = function() {};

    oSkin = new Skin(0, 0, 0, 0, 300, 400, oSkinImage);
    oHair = new Hair(0, 0, 0, 0, 300, 400, oHairImage);
    oTop = new Top(0, 0, 0, 0, 300, 400, oTopImage);
    oBottom = new Bottom(0, 0, 0, 0, 300, 400, oBottomImage);
    oAccessories = new Accessories(0, 0, 0, 0, 300, 400, oAccessoriesImage);


    $(window).keydown(function(event){
        switch (event.keyCode) {
            case 38: // Up key
                iSel--;
                if (iSel < 0) {
                    iSel = 3;
                }
                break;
            case 40: // Up key
                iSel++;
                if (iSel >= 5) {
                    iSel = 0;
                }
                break;
            case 37: // Left key

                // update sprite positions
                if (iSel == 0) {
                    oSkin.iSpr--;
                    if (oSkin.iSpr < 0) {
                        oSkin.iSpr = 3;
                    }
                }
                if (iSel == 1) {
                    oHair.iSpr--;
                    if (oHair.iSpr < 0) {
                        oHair.iSpr = 9;
                    }
                }
                if (iSel == 2) {
                    oTop.iSpr--;
                    if (oTop.iSpr < 0) {
                        oTop.iSpr = 9;
                    }
                }
                if (iSel == 3) {
                    oBottom.iSpr--;
                    if (oBottom.iSpr < 0) {
                        oBottom.iSpr = 9;
                    }
        }
        if (iSel == 4) {
                    oAccessories.iSpr--;
                    if (oAccessories.iSpr < 0) {
                        oAccessories.iSpr = 4;
                   }
                }
                break;
            case 39: // Right key

                // update sprite positions
                if (iSel == 0) {
                    oSkin.iSpr++;
                    if (oSkin.iSpr >= 3) {
                        oSkin.iSpr = 0;
                    }
                }
                if (iSel == 1) {
                    oHair.iSpr++;
                    if (oHair.iSpr >= 9) {
                        oHair.iSpr = 0;
                    }
                }
                if (iSel == 2) {
                    oTop.iSpr++;
                    if (oTop.iSpr >= 9) {
                        oTop.iSpr = 0;
                    }
                }
                if (iSel == 3) {
                    oBottom.iSpr++;
                    if (oBottom.iSpr >= 9) {
                        oBottom.iSpr = 0;
                    }
        }
        if (iSel == 4) {
                   oAccessories.iSpr++;
                  if (oAccessories.iSpr >= 4) {
                       oAccessories.iSpr = 0;
                   }
                }
                break;

            case 32: // Spacebar key - export results
                var temp_ctx, temp_canvas;
                temp_canvas = document.createElement('canvas');
                temp_ctx = temp_canvas.getContext('2d');
                temp_canvas.width = 460;
                temp_canvas.height = 510;

                // draw Skin
                temp_ctx.drawImage(oSkin.image, oSkin.iSpr*oSkin.w, oSkin.y2, oSkin.w, oSkin.h, oSkin.x, oSkin.y, oSkin.w, oSkin.h);

                // draw Hairs
                temp_ctx.drawImage(oHair.image, oHair.iSpr*oHair.w, oHair.y2, oHair.w, oHair.h, oHair.x, oHair.y, oHair.w, oHair.h);

                // draw Top
                temp_ctx.drawImage(oTop.image, oTop.iSpr*oTop.w, oTop.y2, oTop.w, oTop.h, oTop.x, oTop.y, oTop.w, oTop.h);

                // draw Bottom
                temp_ctx.drawImage(oBottom.image, oBottom.iSpr*oBottom.w, oBottom.y2, oBottom.w, oBottom.h, oBottom.x, oBottom.y, oBottom.w, oBottom.h);

                // draw accessories
                temp_ctx.drawImage(oAccessories.image, oAccessories.iSpr*oAccessories.w, oAccessories.y2, oAccessories.w, oAccessories.h, oAccessories.x, oAccessories.y, oAccessories.w, oAccessories.h);

                var vData = temp_canvas.toDataURL();
                $('#face_result').attr('src', vData);
                break;
              }
            });
            setInterval(drawScene, 40); // loop drawScene

  } 

  if (canvas = document.getElementById('scene2')){

    ctx = canvas.getContext('2d');

          // initialization of dragon
          var oSkinImage = new Image();
          oSkinImage.src = 'images/avatar_images/images/male_skin.png';
          oSkinImage.onload = function() {};


        var oHairImage = new Image();
          oHairImage.src = 'images/avatar_images/images/male_hair.png';
          oHairImage.onload = function() {};

        var oTopImage = new Image();
          oTopImage.src = 'images/avatar_images/images/male_top.png';
          oTopImage.onload = function() {};

        var oBottomImage = new Image();
          oBottomImage.src = 'images/avatar_images/images/male_bottom.png';
          oBottomImage.onload = function() {};

        var oAccessoriesImage = new Image();
          oAccessoriesImage.src = 'images/avatar_images/images/male_accessories.png';
          oAccessoriesImage.onload = function() {};

          oSkin = new Skin(0, 0, 0, 0, 300, 440, oSkinImage);
          oHair = new Hair(0, 0, 0, 0, 300, 440, oHairImage);
          oTop = new Top(0, 0, 0, 0, 300, 440, oTopImage);
          oBottom = new Bottom(0, 0, 0, 0, 300, 440, oBottomImage);
          oAccessories = new Accessories(0, 0, 0, 0, 300, 440, oAccessoriesImage);


          $(window).keydown(function(event){
              switch (event.keyCode) {
                  case 38: // Up key
                      iSel--;
                      if (iSel < 0) {
                          iSel = 3;
                      }
                      break;
                  case 40: // Up key
                      iSel++;
                      if (iSel >= 5) {
                          iSel = 0;
                      }
                      break;
                  case 37: // Left key

                      // update sprite positions
                      if (iSel == 0) {
                          oSkin.iSpr--;
                          if (oSkin.iSpr < 0) {
                              oSkin.iSpr = 3;
                          }
                      }
                      if (iSel == 1) {
                          oHair.iSpr--;
                          if (oHair.iSpr < 0) {
                              oHair.iSpr = 9;
                          }
                      }
                      if (iSel == 2) {
                          oTop.iSpr--;
                          if (oTop.iSpr < 0) {
                              oTop.iSpr = 9;
                          }
                      }
                      if (iSel == 3) {
                          oBottom.iSpr--;
                          if (oBottom.iSpr < 0) {
                              oBottom.iSpr = 9;
                          }
              }
              if (iSel == 4) {
                          oAccessories.iSpr--;
                          if (oAccessories.iSpr < 0) {
                              oAccessories.iSpr = 4;
                         }
                      }
                      break;
                  case 39: // Right key

                      // update sprite positions
                      if (iSel == 0) {
                          oSkin.iSpr++;
                          if (oSkin.iSpr >= 3) {
                              oSkin.iSpr = 0;
                          }
                      }
                      if (iSel == 1) {
                          oHair.iSpr++;
                          if (oHair.iSpr >= 9) {
                              oHair.iSpr = 0;
                          }
                      }
                      if (iSel == 2) {
                          oTop.iSpr++;
                          if (oTop.iSpr >= 9) {
                              oTop.iSpr = 0;
                          }
                      }
                      if (iSel == 3) {
                          oBottom.iSpr++;
                          if (oBottom.iSpr >= 9) {
                              oBottom.iSpr = 0;
                          }
              }
              if (iSel == 4) {
                         oAccessories.iSpr++;
                        if (oAccessories.iSpr >= 4) {
                             oAccessories.iSpr = 0;
                         }
                      }
                      break;

                  case 32: // Spacebar key - export results
                      var temp_ctx, temp_canvas;
                      temp_canvas = document.createElement('canvas');
                      temp_ctx = temp_canvas.getContext('2d');
                      temp_canvas.width = 460;
                      temp_canvas.height = 510;

                      // draw Skin
                      temp_ctx.drawImage(oSkin.image, oSkin.iSpr*oSkin.w, oSkin.y2, oSkin.w, oSkin.h, oSkin.x, oSkin.y, oSkin.w, oSkin.h);

                      // draw Hairs
                      temp_ctx.drawImage(oHair.image, oHair.iSpr*oHair.w, oHair.y2, oHair.w, oHair.h, oHair.x, oHair.y, oHair.w, oHair.h);

                      // draw Top
                      temp_ctx.drawImage(oTop.image, oTop.iSpr*oTop.w, oTop.y2, oTop.w, oTop.h, oTop.x, oTop.y, oTop.w, oTop.h);

                      // draw Bottom
                      temp_ctx.drawImage(oBottom.image, oBottom.iSpr*oBottom.w, oBottom.y2, oBottom.w, oBottom.h, oBottom.x, oBottom.y, oBottom.w, oBottom.h);

                      // draw accessories
                      temp_ctx.drawImage(oAccessories.image, oAccessories.iSpr*oAccessories.w, oAccessories.y2, oAccessories.w, oAccessories.h, oAccessories.x, oAccessories.y, oAccessories.w, oAccessories.h);

                      var vData = temp_canvas.toDataURL();
                      $('#face_result').attr('src', vData);
                      break;
            }
    });

  }
  setInterval(drawScene, 40); // loop drawScene
});
