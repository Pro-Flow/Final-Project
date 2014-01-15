int x, y, w, h;
boolean gameOver = false;

void setup() {
  //image from start screen
  x = 100;
  y = 210;
  w = 300;
  h = 100;
}

void draw() {
  //add in background from start screen for consistency
  fill(0, 0, 255); 
  rect(x, y, w, h); 
  fill(255); 
  textSize(50);
  text("GAME OVER", width/2, height/4); 
  display.scoreP1(); 
  display.scoreP2(); 
  textSize(40); 
  fill(255, 0, 0);  
  textSize(25);
  if (gameOver) { 
    if (mousePressed) { 
      if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) { 
        exit();
      }
    }
  }
}
