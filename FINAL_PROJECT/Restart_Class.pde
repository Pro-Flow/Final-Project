class Restart {
  int w, h;

  Restart () {

    w=100;
    h=100;
  }
  void display() {
    fill(17, 4, 142); 
    rect(width/2, height/1.3, w, h, 30);
    fill(255);
    textSize(20);
    text("RESTART", width/1.77, height/1.15);
  }

  void clickRestart () {
    if (mousePressed == true) { 
      if ( mouseX>width/2 && mouseX < (width/2)+100 && mouseY > height/1.3 && mouseY < (height/1.3)+100) {
         run = true;
      }
    }
  }
}

