int x, y, w, h;
boolean gameOver = false;

void setup() {
  x = 400;
  y = 300;
  w = 100;
  h = 100;
}

void draw() {
  fill(255); 
  textSize(50);
  text("GAME OVER", width/2, height/4);
  //game over button 
  rectMode(CENTER);
  fill(3, 71, 255); //all colors are in RGB
  rect(400, 300, 100, 100); 
  if (gameOver) { 
    if (mousePressed) { 
      if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) { 
        exit();
      }
    }
  }
  //restart button
  fill(0, 0, 255);
  rect(400, 425, 100, 100);
  text("PLAY AGAIN",
}

