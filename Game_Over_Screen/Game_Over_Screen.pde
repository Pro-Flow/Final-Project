int x, y, w, h;
boolean gameOver = false;

void setup() {

}

void draw() {
  //game over button
  rectMode(CENTER);
  fill(0, 0, 255); 
  rect(400, 300, 100, 100); 
  fill(255); 
  textSize(50);
  text("GAME OVER", width/2, height/4); 
  if (gameOver) { 
    if (mousePressed) { 
      if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) { 
        exit();
      }
    }
  }
  //restart button
  fill(0, 0, 255);
  rect(400, 300, h);
  text
}
