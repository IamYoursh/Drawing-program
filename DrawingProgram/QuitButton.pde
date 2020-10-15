// Global Variables
String title= "X";
PFont quitButtonFont;
color Black = #050000; //Ink
color GrayQuitButton = #B4B4B4;
color RedQuitButton = #FF4343;

void quitButtonRect() {
  rect(width*19/20, height*0, width*1/20, height*1/20);
}
void quitButtonSetup() {
  quitButtonFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  quitButtonRect(); //Quit Button
}

void quitButtonDraw() {
  //HoverOver
  if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    fill(RedQuitButton);
    quitButtonRect();
  } else {
    fill(GrayQuitButton);
    quitButtonRect();
  }

  //Text in Quit Button
  fill(Black); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(quitButtonFont, 20); //Change the number until it fits, largest font size
  text(title, width*19/20, height*0, width*1/20, height*1/20);
  fill(255); //Reset to white for rest of the program
}

void quitButtonMouseClicked() {
  if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    exit();
  }
}
