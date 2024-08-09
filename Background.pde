PImage background;

void background(){
  background = loadImage("background.jpg");
  background.resize(width,height); //adding the game background and resizing to screen
  image(background,0,0); //displays background image at 0,0
}
