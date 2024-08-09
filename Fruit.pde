PImage appleImg;
PImage grapesImg;
PImage strawberryImg;

int[] fruit = new int[3];

class Fruit{
  float X = random(30,770); //fixed variables for all fruit
  float Y = 20; //all fruit will have the same starting Y value
  float Speed = random(1,3); //all fruit start with the same random speed
  boolean Collected = false; //all start uncollected
  
  void appleMove(){
    if(Collected == false){ //if its not collected reload fruit
      image(appleImg, X, Y);
      Y = Y + Speed; //changes the y value
      if(Y >= 200 && mousePressed == false){ //once the fruit reaches a certain point it resets, loads and drops again
        Y = 20;
        X = random(30,770);
        Speed = random(1,3);
      }
      else if(dist(mouseX,mouseY, X,Y)<35){ //has the mouse collided with the fruit
        if(mousePressed == true){ //if the fruit is clicked on change the x and y values to match the mouse's
          X = mouseX;
          Y = mouseY;
          Speed = 0;
          if(dist(X,Y, bX, bY)<40){ //if the fruit has collided with the basket collect it
            fruit[0] = 1; //add fruit to the array
            Collected = true; //fruit has been collected
          }
        }  
      }
    }
  }
  
  void grapesMove(){
    if(Collected == false){ //if its not collected reload fruit
      image(grapesImg, X, Y);
      Y = Y + Speed; //changes the y value
      if(Y >= 200 && mousePressed == false){ //once the fruit reaches a certain point it resets, loads and drops again
        Y = 20;
        X = random(30,770);
        Speed = random(1,3);
      }
      else if(dist(mouseX,mouseY, X,Y)<35){ //has the mouse collided with the fruit
        if(mousePressed == true){ //if the fruit is clicked on change the x and y values to match the mouse's
          X = mouseX;
          Y = mouseY;
          Speed = 0;
          if(dist(X,Y, bX, bY)<40){ //if the fruit has collided with the basket collect it
            fruit[1] = 2; //add fruit to the array
            Collected = true; //fruit has been collected
          }
        }  
      }
    }
  }
  
  void strawberryMove(){
    if(Collected == false){ //if its not collected reload fruit
      image(strawberryImg, X, Y);
      Y = Y + Speed; //changes the y value
      if(Y >= 200 && mousePressed == false){ //once the fruit reaches a certain point it resets, loads and drops again
        Y = 20;
        X = random(30,770);
        Speed = random(1,3);
      }
      else if(dist(mouseX,mouseY, X,Y)<35){ //has the mouse collided with the fruit
        if(mousePressed == true){ //if the fruit is clicked on change the x and y values to match the mouse's
          X = mouseX;
          Y = mouseY;
          Speed = 0;
          if(dist(X,Y, bX, bY)<40){ //if the fruit has collided with the basket collect it
            fruit[2] = 3; //add fruit to the array
            Collected = true; //fruit has been collected
          }
        }  
      }
    }
  }
}
