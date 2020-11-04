//Global Variables
color ink, black = #000000;
float controlPannelX, controlPannelY, controlPannelWidth, controlPannelHeight;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
Boolean draw=false;

//space

void setup() {
  size(850, 600);
  quitButtonSetup();
  //
  rect(controlPannelX, controlPannelY, controlPannelWidth, controlPannelHeight);
  //
  controlPannelX = width*0;
  controlPannelY = height*0;
  controlPannelWidth = width*4/4;
  controlPannelHeight = height*6/6;
  //
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*4.7/6;
  drawingSurfaceHeight = height*6/6;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //drawingSurface
  //
}//End setup


void draw() {
  quitButtonDraw();
  //
  if (draw == true) {
    fill(ink);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }//End IF
}//End draw


void mousePressed() {
  quitButtonMouseClicked();
  //
  if (mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) { 
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }//End IF
    ink = black;
    drawingDiameter = width*0.5/50;
  }//End If
}//End mousePressed


void keyPressed() {
}//End keyPressed
