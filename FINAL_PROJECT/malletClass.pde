class mallet {
  
  PVector loc, vel;
  float d;
  color c;
  
  mallet (float x, float y){
    loc = new PVector (x, y);
    vel =  new PVector(ramdom(-1, 1), random(-2, 0));
    d = 30;
    c = color(random(360), 100, 100);
    
    void display(){
      fill(c);
      ellipse(loc.x, loc.y, d, d);
    }
    
    void keyPressed(){
      if(key == 'w'){
        y--;
      }
      if(key == 'a'){
        x--;
      }
      if(key == 's'){
        y++
      }
      if(key =='d'){
        x++;
      }
      if(key == 'w' && key == 'a'){
        x--;
        y--;
    }
    if(key == 'w' && key == 'd'){
      x++;
      y--;
    }
    if(key == 's' && key == 'a'){
      x--;
      y++;
    }
    if(key == 's' && key == 'd'){
      x++;
      y++;
    }
    }
      
    void wasd(){
      void keyPressed(){
        
      }
    }
      
    
    void arrows(){
      //WASD & Arrow Key movement
      if(keyPressed && key == CODED){
        if(keyCode == LEFT){
          x--;
        }
        if(keyCode == UP){
          y--;
        }
        if(keyCode == RIGHT){
          x++;
        }
        if(keyCODE == DOWN){
          y++;
        }
        if(keyCode == LEFT && keyCode == UP){
          x--;
          y--;
      }
      if(keyCode == RIGHT && keyCode == UP){
        x++;
        y--;
    }
    if(keyCode == DOWN && keyCode == LEFT){
      x--;
      y++;
    }
    if(keyCode = DOWN && keyCode == RIGHT){
      x++;
      y++;
    }
      }
    }
    
    void move(){
      void wasd(){
        void arrows(){
        }
      }
    }
    
    void checkPuck(puck p){
      if(loc.dist(p.loc) < d/2 + p.d/2){
        vel.mult(-1);
      }
    }
      
   
      
