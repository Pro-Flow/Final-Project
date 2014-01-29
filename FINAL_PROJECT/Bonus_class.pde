class Bonus {
  PVector loc;
  float d;
  color c;
  int life;

  Bonus () {
    loc = new PVector(random(50,750), random(50,450));
    d = 30;
    c = color(0, 0, 255);
    life = 200;
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
    textSize(10);
    text("BONUS", loc.x, loc.y);
  }

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

