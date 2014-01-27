class Mallet {
  PVector loc, vel;
  float d;
  color c;
  int which;

  Mallet (float x, float y, int wh) {
    loc = new PVector (x, y);
    vel = new PVector(0, 0);
    d = 60;
    c = color(255, 0, 0);
    which = wh;
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void keyPressed() {
    //WASD keys control the mallet on the left
    if (which == 0) {
      if (keyPressed) {
        loc.add(vel);
        if (key == 's') {
          vel.y = .1;
          vel.x = 0;
        }
        if (key == 'a') {
          vel.x = -.1;
          vel.y = 0;
        }
        if (key == 'w') {
          vel.y = -.1;
          vel.x = 0;
        }
        if (key =='d') {
          vel.x = .1;
          vel.y = 0;
        }
      }
    }
  }

  void arrows() {
    //Arrow Key movement
    if (which == 1) {
      if (keyPressed && key == CODED) {
        loc.add(vel);
        if (keyCode == LEFT) {
          vel.x = -.1;
          vel.y = 0;
        }
        if (keyCode == UP) {
          vel.y = -.1;
          vel.x = 0;
        }
        if (keyCode == RIGHT) {
          vel.x = .1;
          vel.y = 0;
        }
        if (keyCode == DOWN) {
          vel.y = .1;
          vel.x = 0;
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

  void bounce() {
    //This funtion helps with the bouncing motion  of the puck
    PVector ab = new PVector();
    ab.set(p1.loc);
    ab.sub(loc);
    ab.normalize();
    while (p1.loc.dist (loc) <p1.d/2 + d/2) {
      p1.loc.add(ab);
    }
    PVector impulse = new PVector();
    float impactSpeed;
    impulse.set(ab);
    impactSpeed = .01;
    impulse.mult(sqrt(impactSpeed));
    p1.vel.add(impulse);
  }
}

