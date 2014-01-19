class mallet {
  PVector loc, loc1, vel;
  float d;
  color c;

  mallet () {
    loc = new PVector (random(width), random(height));
    loc1 = new PVector (600, 300);
    vel =  new PVector (random(-1, 1), random(-1, 1));
    d = 60;
    c = color(255, 0, 0);
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void keyPressed() {
    if (keyPressed) {
      if (key == 's') {
        loc.y+=3;
      }
      if (key == 'a') {
        loc.x-=3;
      }
      if (key == 'w') {
        loc.y-=3;
      }
      if (key =='d') {
        loc.x+=3;
      }

      if (key == 'w' && key == 'a') {
        loc.x-=3;
        loc.y+=3;
      }
      if (key == 'w' && key == 'd') {
        loc.x+=3;
        loc.y+=3;
      }
      if (key == 's' && key == 'a') {
        loc.x-=3;
        loc.y-=3;
      }
      if (key == 's' && key == 'd') {
        loc.x+=3; 
        loc.y-=3;
      }
    }
  }

  void arrows() {
    //WASD & Arrow Key movement
    if (keyPressed && key == CODED) {
      if (keyCode == LEFT) {
        loc.x-=3;
      }
      if (keyCode == UP) {
        loc.y-=3;
      }
      if (keyCode == RIGHT) {
        loc.x+=3;
      }
      if (keyCode == DOWN) {
        loc.y+=3;
      }
      if (keyCode == LEFT && keyCode == UP) {
        loc.x-=3;
        loc.y-=3;
      }
      if (keyCode == RIGHT && keyCode == UP) {
        loc.x+=3;
        loc.y-=3;
      }
      if (keyCode == DOWN && keyCode == LEFT) {
        loc.x--;
        loc.y++;
      }
      if (keyCode == DOWN && keyCode == RIGHT) {
        loc.x+=3;
        loc.y+=3;
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
      float diff = d - p1.d;
      if (diff >= 0) {
        p1.vel.mult(-1);
      }


      // 
      //      if (l.dist(p1.loc.x) < d/2 + p1.d/2) {
      //        p1.vel.x = -1;
      //      }
      //      if (l.dist(p1.loc.x) > d/2 - p1.d/2) {
      //        p1.vel.x = 1;
      //      }
      //      if (p1.loc.y < mallet.l.y) {
      //        p1.vel.y = -1;
      //      }
      //      if (p1.loc.y > mallet.l.y) {
      //        p1.vel.y = 1;
      //  }
    }
  }
}

