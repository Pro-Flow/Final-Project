class bonus {

  PVector loc;
  float d;
  color c;

  bonus () {
    loc = new PVector(random(width), random(height));
    d = 20;
    c = color(random(255), random(255), random(255));
  }

  void display(){
    if (score1 >= 5 || score2 >= 5) {
      fill(c);
      ellipse(loc.x, loc.y, d, d);
    }
  }
}

/*void reset(){
 loc.x = 1000;
 loc.y = 1000;
 }
 
 void touch(puck p){
 if(loc.dist(p.loc) <20){
 score1 += 3;
 score2 += 3;
 bonus.reset();
 }
 }
 }
 */

