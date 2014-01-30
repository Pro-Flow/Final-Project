class GameOver {
  int w, h;

  GameOver() {
    w=100;
    h=100;
  }
  
  void alien() {
    //displays game over screen with exit button
    background(earth);
    image(alien1, x+50, height/3.5, 200, 200);
    x+=2;
    if (x+100 >= width) {
      x = -100;
    }
    for (int i = 0; i < width; i+=5) {
      image(alien1, i*20, height/4, 50, 50);
      i+=0.5;
    }
    for (int i = 0; i< width; i+=5) {
      image(alien1, i*20, height/1.6, 50, 50);
      i+=0.5;
    }
  }

  void overButton() {
      //close the game
    //if you press the mouse on the game over screen, game will close
    fill(255); 
    textSize(75);
    text("GAME OVER", width/2, height/6);
    //game over button
    fill(17, 4, 142); 
    rect(width-250,height/1.3, w, h, 30); 
    //game over button text
    fill(255);
    textSize(20);
    text("END", width/1.34, height/1.15);
    if (mousePressed == true) { 
      if (mouseX > (width*3/4)-50 && mouseX < (width*3/4)+50 && mouseY > (height*3/4)-50 && mouseY < (height*3/4)+50) { 
        exit();
      }
    }
  }
}

