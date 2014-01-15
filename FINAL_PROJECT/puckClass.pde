class puck {
  
  PVector loc, vel;
  float d;
  color c;
  
  puck (float x, float y){
    loc = new PVector(x, y);
    vel = new PVector(random(-1, 1), random(-2, 0));
    d = 20;
    c = color(random(360), 100, 100);
  }
  
  void display(){
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }
  
  void bounce(){
    //makes puck bounce
    loc.add(vel);
    if(loc.x + d/2 > width){
      vel.x = -vel.x;
    }
    if(loc.x - d/2 < 0){
      vel.x = -vel.x
    }
    if(loc.y + d/2 > height){
      vel.y = -vel.y;
    }
    if(loc.y - d/2 < 0){
      vel.y = -vel.y;
    }
  }
  
  void reset(){
    /*Resets puck to the middle of table if it goes through one
    the holes*/
    //Left Hole
    if(loc.x + d/2 < 0 && loc.y > 185 && loc.y < 315){
      loc.x = width/2;
      loc.y = height/2;
      score1++;
    }
    //Right Hole
    if(loc.x - d/2 > width && loc.y > 185 && loc.y < 315){
      loc.x = width/2;
      loc.y = height/2;
      score2++;
    }
    
    void touch(bonus b){
      if(loc.dist(b.loc) <20){
        score1 += 50;
        score2 += 50;
      }
    }
        
    
