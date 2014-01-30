class Restart {
  int w, h;

  Restart () {
    w=100;
    h=100;
  }
  
  void display() {
    fill(17, 4, 142); 
    rect(width/1.2, height/1.3, w, h, 30);
    fill(255);
    textSize(20);
    text("RESTART", width/1.12, height/1.15);
  }

  void clickRestart () {
    //Game resets and score goes to zero when mouse is clicked
    if (mousePressed == true) { 
      if ( mouseX>width/1.2 && mouseX < (width/1.2)+100 && mouseY > height/1.3 && mouseY < (height/1.3)+100) {
        run = true;
        gameOver=false;
        instructions = false;
        score1 = 0;
        score2 = 0;
      }
    }
  }
}

