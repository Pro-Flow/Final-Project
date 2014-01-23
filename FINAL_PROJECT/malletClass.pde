class mallet {
  PVector loc, vel;
  float d;
  color c;
  int which;

  mallet (float x, float y, int wh) {
    loc = new PVector (x, y);
    vel = new PVector(0,0);
    d = 30;
    c = color(255, 0, 0);
    which = wh;
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void keyPressed() {
    if (which == 0) {
      if (keyPressed) {
        if (key == 's') {
          loc.y+=5;
        }
        if (key == 'a') {
          loc.x-=5;
        }
        if (key == 'w') {
          loc.y-=5;
        }
        if (key =='d') {
          loc.x+=5;
        }

        if (key == 'w' && key == 'a') {
          loc.x-=5;
          loc.y+=5;
        }
        if (key == 'w' && key == 'd') {
          loc.x+=5;
          loc.y+=5;
        }
        if (key == 's' && key == 'a') {
          loc.x-=5;
          loc.y-=5;
        }
        if (key == 's' && key == 'd') {
          loc.x+=5; 
          loc.y-=5;
        }
      }
    }
  }

  void arrows() {
    //WASD & Arrow Key movement
    if (which == 1) {
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
  }


  void wasd() {
    keyPressed();
  }

  void move() {
    keyPressed();
    arrows();
  }

  void bounce(puck p1) {
    PVector ab = new PVector();
    ab.set(p1.loc);
    ab.sub(loc);
    ab.normalize();
    while (p1.loc.dist (loc) <p1.d/2 + d/2) {
      p1.loc.add(ab);
    }
    PVector impulse = new PVector();
    float impactSpeed = 0.01;
    impulse.set(ab);
    impulse.mult(impactSpeed);
    p1.vel.add(impulse);
  }
}

