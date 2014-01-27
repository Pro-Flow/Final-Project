<<<<<<< HEAD:FINAL_PROJECT/puckClass.pde
class puck {

=======
class Puck {
>>>>>>> 6407548e7ea3b99d9088c2c22d52512c7415fee6:FINAL_PROJECT/Puck_class.pde
  PVector loc;
  PVector vel;
  float d;
  color c;

<<<<<<< HEAD:FINAL_PROJECT/puckClass.pde

  puck () {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    d = 20;
=======
  Puck () {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    d = 40;
>>>>>>> 6407548e7ea3b99d9088c2c22d52512c7415fee6:FINAL_PROJECT/Puck_class.pde
    c = color(0);
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void update() {
    //makes puck bounce
    if (loc.x + d/2 > width - 32) {
<<<<<<< HEAD:FINAL_PROJECT/puckClass.pde
      vel.x = -abs(vel.x);
    }
    if (loc.x - d/2 < 32) {
      vel.x = abs(vel.x);
=======
      if (loc.y - d/2 < 184 || loc.y + d/2 > 316) {
        vel.x = -abs(vel.x);
      }
    }
    if (loc.x - d/2 < 32) {
      if (loc.y - d/2 < 184 || loc.y + d/2 > 316) {
        vel.x = abs(vel.x);
      }
>>>>>>> 6407548e7ea3b99d9088c2c22d52512c7415fee6:FINAL_PROJECT/Puck_class.pde
    }
    if (loc.y + d/2 > height -32) {
      vel.y = -abs(vel.y);
    }
    if (loc.y - d/2 < 32) {
      vel.y = abs(vel.y);
    }
<<<<<<< HEAD:FINAL_PROJECT/puckClass.pde
    
=======
    loc.add(vel);
>>>>>>> 6407548e7ea3b99d9088c2c22d52512c7415fee6:FINAL_PROJECT/Puck_class.pde
  }



  void reset() {
    //Resets puck to the middle of table if it goes through one
    //the holes
    //Left Hole
    if (loc.x - d/2 > width) {
      loc.x = width/2;
      loc.y = height/2;
      vel.x = 0;
      vel.y = 0;
      score1++;
    }
    //Right Hole
<<<<<<< HEAD:FINAL_PROJECT/puckClass.pde
    if (loc.x + d/2 > width && loc.y > 185 && loc.y < 315) {
=======
    if (loc.x + d/3 < 0) {
>>>>>>> 6407548e7ea3b99d9088c2c22d52512c7415fee6:FINAL_PROJECT/Puck_class.pde
      loc.x = width/2;
      loc.y = height/2;
      vel.x = 0;
      vel.y = 0;
      score2++;
    }
  }
}

<<<<<<< HEAD:FINAL_PROJECT/puckClass.pde



=======
>>>>>>> 6407548e7ea3b99d9088c2c22d52512c7415fee6:FINAL_PROJECT/Puck_class.pde
