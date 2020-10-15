//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
Boolean draw=false;
color ink, black = #000000;

void setup() {
  size(800, 600);
  quitButtonSetup();
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;

  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //drawingSurface
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
    drawingDiameter = width*1/100;
  }//End If
}//End mousePressed


void keyPressed() {
}//End keyPressed
