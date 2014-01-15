class bonus {
  
  PVector loc;
  float d;
  color c;
  
  bonus (){
    loc = new PVector(x, y);
    d = 20;
    c = color(random(360), 100, 100);
    
    void display(){
      fill(c);
      ellipse(loc.x, loc.y, d, d);
    }
  }
 
    
