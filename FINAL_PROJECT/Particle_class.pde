class Particle {
  PVector loc, acc, vel;
  int d;
  int life;

  Particle(PVector l) {
    loc = l.get();
    vel = new PVector (random(-1, 1), random(-2, 0));
    acc = new PVector (0, 0.1);
    d = 10;
    life = 80;
  }

  void display () {
    //displays particles
    fill(237, 231, 250, life);
    noStroke();
    ellipse(loc.x, loc.y, d, d);
  }
  
//particles fall and fade out
  void update() {
    loc.add(vel);
    vel.add(acc);
    life--;
  }
}
