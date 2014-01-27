class Bonus {
  PVector loc;
  float d;
  color c;

  Bonus () {
    loc = new PVector(random(width), random(height));
    d = 20;
    c = color(255, 0, 0);
  }

  void display() {
    if (score1 >= 5 || score2 >= 5) {
      fill(c);
      ellipse(loc.x, loc.y, d, d);
      text("BONUS", loc.x, loc.y);
    }
  }

  void reset() {
    loc.x = 1000;
    loc.y = 1000;
  }

  void touch() {
    if (loc.dist(p1.loc) < d/2+p1.d/2) {
      reset();
      score1=score1+2;
      score2=score2+2;
    }
  }
}
