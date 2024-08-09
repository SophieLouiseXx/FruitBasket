PImage basketImg;

float bX = 800; //initial starting X value for the basket
float speedbX = 1.5; //speed of the basket
float bY = 240; //only moves sideways

class Basket{
  
  void basketMove(){
    basketImg = loadImage("basket.png");
    basketImg.resize(80,50);
    
    image(basketImg, bX, bY); // where the basket starts
    bX = bX - speedbX;  //move basket right
    
    if(bX+50 <=0){ //if basket reaches the end of the screen...
      if(fruit[0] == 1 && fruit[1] == 2 && fruit[2] == 3){ //if basket is full and has all 3 types of fruit, the game is won 
      tint(0,255,0); //overlays a tint on the screen
      fill(255,0,0);
      textSize(80);
      text("GAME WON!", 220, 130);
      }
      else{ //if the basket is not full and is missing some fruit then the game is lost.
        GameState = MENU; //changes the gamemode out of game
        tint(128,128,128); 
        fill(255,0,0);
        textSize(80);
        text("GAME OVER!", 220, 130);
      }
    }
   
  }
}
