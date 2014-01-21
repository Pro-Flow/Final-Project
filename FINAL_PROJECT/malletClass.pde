class mallet {
  PVector loc, loc1, vel;
  float d;
  color c;

  mallet () {
    loc = new PVector (width/6, height*2.5);
    loc1 = new PVector (width*7.8, height*2.5);
    vel =  new PVector (random(-1, 1), random(-1, 1));
    d = 30;
    c = color(random(255), random(255), random(255));
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }
  void display2(){
    fill(c);
    ellipse(loc1.x, loc1.y, d, d);
  }
    

  void keyPressed() {
    if (keyPressed) {
      if (key == 's') {
        loc1.y+=5;
      }
      if (key == 'a') {
        loc1.x-=5;
      }
      if (key == 'w') {
        loc1.y-=5;
      }
      if (key =='d') {
        loc1.x+=5;
      }

      if (key == 'w' && key == 'a') {
        loc1.x-=5;
        loc1.y+=5;
      }
      if (key == 'w' && key == 'd') {
        loc1.x+=5;
        loc1.y+=5;
      }
      if (key == 's' && key == 'a') {
        loc1.x-=5;
        loc1.y-=5;
      }
      if (key == 's' && key == 'd') {
        loc1.x+=5; 
        loc1.y-=5;
      }
    }
  }

  void arrows() {
    //WASD & Arrow Key movement
    if (keyPressed && key == CODED) {
      if (keyCode == LEFT) {
        loc.x-=5;
      }
      if (keyCode == UP) {
        loc.y-=5;
      }
      if (keyCode == RIGHT) {
        loc.x+=5;
      }
      if (keyCode == DOWN) {
        loc.y+=5;
      }
      if (keyCode == LEFT && keyCode == UP) {
        loc.x-=5;
        loc.y-=5;
      }
      if (keyCode == RIGHT && keyCode == UP) {
        loc.x+=5;
        loc.y-=5;
      }
      if (keyCode == DOWN && keyCode == LEFT) {
        loc.x-=5;
        loc.y+=5;
      }
      if (keyCode == DOWN && keyCode == RIGHT) {
        loc.x+=5;
        loc.y+=5;
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
      p1.vel.mult(-1);
    }

    /*if (loc.dist(p1.loc.x) < d/2 + p1.d/2) {
      p1.vel.x = -1;
    }
    if (loc.dist(p1.loc.x) > d/2 - p1.d/2) {
      p1.vel.x = 1;
    }
    if (p1.loc.y < mallet.l.y) {
      p1.vel.y = -1;
    }
    if (p1.loc.y > mallet.l.y) {
      p1.vel.y = 1;
    }
  }*/
}
}

