class Bonus {
  PVector loc;
  float d;
  color c;
  int life;

  Bonus () {
    loc = new PVector(random(width), random(height));
    d = 40;
    c = color(255, 0, 0);
    life = 500;
  }

  void display() {
println("i exist");
    fill(c);
    ellipse(loc.x, loc.y, d, d);
    text("BONUS", loc.x, loc.y);
  }

  //  void reset() {
  //    loc.x = 1000;
  //    loc.y = 1000;
  //  }
  
  void update(){
    
   life--; 
  }

  boolean touch(Mallet m) {
    if (loc.dist(m.loc) < d/2+m.d/2) {
      return true;
    }
    else {
      return false;
    }
  }
}

