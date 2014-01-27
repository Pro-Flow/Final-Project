class Puck {

  PVector loc;
  PVector vel;
  float d;
  color c;

  Puck () {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    d = 40;
    c = color(0);
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void update() {
    //makes puck bounce off of walls
    if (loc.x + d/2 > width - 32) {
      if (loc.y - d/2 < 184 || loc.y + d/2 > 316) {
        vel.x = -abs(vel.x);
      }
    }
    if (loc.x - d/2 < 32) {
      if (loc.y - d/2 < 184 || loc.y + d/2 > 316) {
        vel.x = abs(vel.x);
      }
    }
    if (loc.y + d/2 > height -32) {
      vel.y = -abs(vel.y);
    }
    if (loc.y - d/2 < 32) {
      vel.y = abs(vel.y);
    }
    loc.add(vel);
  }



  void reset() {
    /*Resets puck to the middle of table if it goes through one
    the holes*/
    //Left Hole
    if (loc.x - d/2 > width) {
      loc.x = width/2;
      loc.y = height/2;
      vel.x = 0;
      vel.y = 0;
      score1++;
    }
    //Right Hole
    if (loc.x + d/3 < 0) {
      loc.x = width/2;
      loc.y = height/2;
      vel.x = 0;
      vel.y = 0;
      score2++;
    }
  }
}

