class mallet {

  PVector loc, vel;
  float d;
  color c;

  mallet () {
    loc = new PVector (random(width), random(height));
    vel =  new PVector(random(-1, 1), random(-2, 0));
    d = 30;
    c = color(random(360), 100, 100);
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void keyPressed() {
    //wasd
    if (key == 'w') {
      loc.y--;
    }
    if (key == 'a') {
      loc.x--;
    }
    if (key == 's') {
      loc.y++;
    }
    if (key =='d') {
      loc.x++;
    }
    if (key == 'w' && key == 'a') {
      loc.x--;
      loc.y--;
    }
    if (key == 'w' && key == 'd') {
      loc.x++;
      loc.y--;
    }
    if (key == 's' && key == 'a') {
      loc.x--;
      loc.y++;
    }
    if (key == 's' && key == 'd') {
      loc.x++;
      loc.y++;
    }
  }     

  void arrows() {
    //WASD & Arrow Key movement
    if (keyPressed && key == CODED) {
      if (keyCode == LEFT) {
        loc.x--;
      }
      if (keyCode == UP) {
        loc.y--;
      }
      if (keyCode == RIGHT) {
        loc.x++;
      }
      if (keyCode == DOWN) {
        loc.y++;
      }
      if (keyCode == LEFT && keyCode == UP) {
        loc.x--;
        loc.y--;
      }
      if (keyCode == RIGHT && keyCode == UP) {
        loc.x++;
        loc.y--;
      }
      if (keyCode == DOWN && keyCode == LEFT) {
        loc.x--;
        loc.y++;
      }
      if (keyCode == DOWN && keyCode == RIGHT) {
        loc.x++;
        loc.y++;
      }
    }
  }

  void wasd() {
    keyPressed();
  }

  void move() {
    keyPressed();
    arrows();
  }


  void checkPuck(puck p1) {
    if (loc.dist(p1.loc) < d/2 + p1.d/2) {
      if(p1.loc.x < mallet.loc.x){
        p1.vel.x = -1;
      }
      if(p1.loc.x > mallet.loc.x){
        p1.vel.x = 1;
    }
    if(p1.loc.y < mallet.loc.y){
      p1.vel.y = -1;
    }
    if(p1.loc.y > mallet.loc.y){
      p1.vel.y = 1;
  }
}
  }
}

