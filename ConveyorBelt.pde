PImage conveyor;
int cvX=0;

void conveyor(){
   conveyor = loadImage("conveyor.jpg");
   conveyor.resize(width,20);
}

void scrollConveyor(){
  image(conveyor, cvX, 280);  //draws the image to fill the base of the canvas
  image(conveyor, cvX+conveyor.width, 280);  //redraws the image off the right of the canvas
  cvX = cvX-2;
  if(cvX == -conveyor.width){  //if the image goes off the canvas
    cvX = 0;  //resets back to the initial value
  }
}
