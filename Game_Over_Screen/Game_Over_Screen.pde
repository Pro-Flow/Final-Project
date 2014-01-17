int x, y, w, h;
boolean gameOver = false;

void setup() {
  size(800, 500);
  x = 375;
  y = 250;
  w = 100;
  h = 75;
}

void draw() {
  //game over text
  fill(255); 
  textSize(75);
  textAlign(CENTER);
  text("GAME OVER", width/2, height/4);
  //game over button
  rectMode(CENTER);
  fill(3, 71, 255); //all colors are in RGB
  stroke(255);
  rect(x, y, w, h); 
  //game over button text
  fill(255);
  textSize(25);
  text("END", x, y);
  if (gameOver) { 
    if (mousePressed) { 
      if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) { 
        exit();
      }
    }
  }
  //  //restart button
  //  fill(0, 50, 183);
  //  rect(x, , w, h);
  //  fill(255);
  //  textSize(25);
  //  text("PLAY AGAIN", x, y);
  //  if(mousePressed){
  //    if(mouseX > x && mouseX < x+s && mouseY > y
}

