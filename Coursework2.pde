final int MENU = 0;
final int GAME = 1;
int GameState = MENU;

Basket basket;
Fruit apple, grapes, strawberry;

void setup(){
  size(800,300);
  MainMenu();
  
  basket = new Basket(); //instantiate a new basket
  
  apple = new Fruit(); //instantiate each new fruit
  appleImg = loadImage("apple.png"); //adds the image to each fruit
  appleImg.resize(35,35); //resizes the image to fit on the screen
  
  grapes = new Fruit();
  grapesImg = loadImage("grapes.png");
  grapesImg.resize(35,35);
  
  strawberry = new Fruit();
  strawberryImg = loadImage("strawberry.png");
  strawberryImg.resize(35,35);
}

void draw(){ //repeats constantly to allow the game to continue to update and run, allows the objects to move.
  keyPressed();
  if(GameState == GAME){  //while the game is running...
    background(); 
    scrollConveyor();
    basket.basketMove();
    apple.appleMove();
    grapes.grapesMove();
    strawberry.strawberryMove();
  }
}

void keyPressed(){
  if(key == ENTER && GameState == MENU){ // if enter is pressed and its on the menu screen then start the game
    GameState = GAME; //if enter is pressed start the game
    game();
  }
}

void game(){
  conveyor();
}
