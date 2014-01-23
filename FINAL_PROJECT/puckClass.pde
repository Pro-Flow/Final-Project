class puck {

  PVector loc;
  PVector vel;
  float d;
  color c;


  puck (){
    loc = new PVector(width/2, height/2);
    vel = new PVector(0,0);
    d = 20;
    c = color(0);

  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void update() {
    //makes puck bounce
    loc.add(vel);
    if (loc.x + d/2 > width - 32) {
      vel.x = -vel.x;
    }
    if (loc.x - d/2 < 32) {
      vel.x = -vel.x;
    }
    if (loc.y + d/2 > height -32) {
      vel.y = -vel.y;
    }
    if (loc.y - d/2 < 32) {
      vel.y = -vel.y;
    }
    if(loc.x + (d/2)/4 < 0 || pos.x - ((d/2)/4) > width){
      die();
  }
  
  /*void die(){
    dead = true;
  }
  
  boolean isDead(){
    return dead;
  }*/
  
  

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






