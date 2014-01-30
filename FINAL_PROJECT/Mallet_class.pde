class Mallet {
  PVector loc, vel;
  float d;
  color c;
  int which;

  Mallet (float x, float y, int wh) {
    loc = new PVector (x, y);
    vel = new PVector(0, 0);
    d = 40;
    c = color(255, 0, 0);
    which = wh;
  }

  void display() {
    //Shows the mallet
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void keyPressed() {
    //WASD keys control the mallet on the left
    if (which == 0) {
      if (keyPressed) {
        if (key == 's') {
          if (loc.y + d/2 < height-40) {
            loc.add(vel);
            vel.y = 8;
            vel.x = 0;
          }
        }
        if (key == 'a') {
          if (loc.x - d/2 > 40) {
            loc.add(vel);
            vel.x = -8;
            vel.y = 0;
          }
        }
        if (key == 'w') {
          if (loc.y - d/2 > 40) {
            loc.add(vel);
            vel.y = -8;
            vel.x = 0;
          }
        }
        if (key =='d') {
          if (loc.x + d/2 < width -40) {
            loc.add(vel);
            vel.x = 8;
            vel.y = 0;
          }
        }
      }
    }
  }

  void arrows() {
    //Arrow Key movement. controls the mallet on the right
    if (which == 1) {
      if (keyPressed && key == CODED) {
        if (keyCode == LEFT) {
          if (loc.x-d/2 > 40) {
            loc.add(vel);
            vel.x = -8;
            vel.y = 0;
          }
        }
        if (keyCode == UP) {
          if (loc.y-d/2 > 40) {
            loc.add(vel);
            vel.y = -8;
            vel.x = 0;
          }
        }
        if (keyCode == RIGHT) {
          if (loc.x+d/2 < width - 40) {
            loc.add(vel);
            vel.x = 8;
            vel.y = 0;
          }
        }
        if (keyCode == DOWN) {
          if (loc.y+d/2 < height - 40) {
            loc.add(vel);
            vel.y = 8;
            vel.x = 0;
          }
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
    /*This funtion helps with the bouncing motion  of the puck
     essentially the physics of it*/
    PVector ab = new PVector();
    ab.set(p1.loc);
    ab.sub(loc);
    ab.normalize();
    while (p1.loc.dist (loc) <= p1.d/2 + d/2) {
      p1.loc.add(ab);
    }
    PVector impulse = new PVector();
    float impactSpeed;
    impactSpeed = 8;
    ab.mult(sqrt(impactSpeed));
    p1.vel.add(ab);
  }
}

