//main menu
//click opens game
//click closes application

void MainMenu(){
  background = loadImage("background.jpg");
  background.resize(width,height); //adding the game background and resizing to screen
  image(background,0,0); //displays background image at 0,0
  
  fill(128,0,128);
  textSize(80);
  text("Fruit Salad", 220, 130);
  textSize(60);
  text("Press enter to start!", 160, 200);
}
