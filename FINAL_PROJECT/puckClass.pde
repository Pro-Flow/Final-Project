class puck {

  PVector loc, vel;
  float d;
  color c;

  puck (){
    loc = new PVector(width/2, height/2);
    vel = new PVector(random(-1, 1), random(-2, 0));
    d = 40;
    c = color(random(255), random(255), random(255));
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void bounce() {
    //makes puck bounce
    loc.add(vel);
    if (loc.x + d/2 > width - 30) {
      vel.x = -vel.x;
    }
    if (loc.x - d/2 < 30) {
      vel.x = -vel.x;
    }
    if (loc.y + d/2 > height -30) {
      vel.y = -vel.y;
    }
    if (loc.y - d/2 < 30) {
      vel.y = -vel.y;
    }
  }

  void reset() {
    /*Resets puck to the middle of table if it goes through one
     the holes*/
    //Left Hole
    if (loc.x + d/2 < 0 && loc.y > 185 && loc.y < 315) {
      loc.x = width/2;
      loc.y = height/2;
      score1++;
    }
    //Right Hole
    if (loc.x - d/2 > width && loc.y > 185 && loc.y < 315) {
      loc.x = width/2;
      loc.y = height/2;
      score2++;
    }
  }
}





