int x, y, w, h;
boolean gameOver = false;

void setup() {
  size(800, 500);
  x = width/4;
  y = height*3/4;
  w = 100;
  h = 75;
}

void draw() {
  if (!gameOver) {
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
    text("END", x, y+7);
  }
  //to end/close the game...
  if (gameOver) { 
    if (mousePressed) { 
      if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h) { 
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

