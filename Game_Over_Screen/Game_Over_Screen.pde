int x, y, s;
boolean gameOver = false;

void setup() {
  x = 375;
  y = 250;
  w = 75;
  h = 100;
}

void draw() {
  fill(255); 
  textSize(75);
  text("GAME OVER", width/2, height/4);
  //game over button
  fill(3, 71, 255); //all colors are in RGB
  rect(x, y, w, h); 
  fill(255);
  textSize(25);
  text("END", x, y);
  if (gameOver) { 
    if (mousePressed) { 
      if (mouseX > x && mouseX < x+(s/2) && mouseY > y && mouseY < y+(s/2)) { 
        exit();
      }
    }
  }
  //restart button
  fill(0, 50, 183);
  rect(x, , w, h);
  fill(255);
  textSize(25);
  text("PLAY AGAIN", x, y);
  if(mousePressed){
    if(mouseX > 
}
