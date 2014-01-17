int x, y, w, h;
boolean gameOver = false;

void setup() {
  x = 100;
  y = 210;
  w = 300;
  h = 100;
}

void draw() {
  background(0);
  fill(0, 0, 255); 
  rect(x, y, w, h); 
  fill(255); 
  textSize(50);
  text("GAME OVER", width/2, height/4); 
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
