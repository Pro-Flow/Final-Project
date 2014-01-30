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
  }

  void update(){
    /*This is so that after a short period of time, the bonus
    item goes away*/
    
   life--; 
  }

  boolean touch(Mallet m) {
    //This is to make sure that the mallet is touching the item
    if (loc.dist(m.loc) < d/2+m.d/2) {
      return true;
    }
    else {
      return false;
    }
  }
}

