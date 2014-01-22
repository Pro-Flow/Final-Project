class Particle {

  PVector loc, acc, vel;
  int d;
  int life;

  Particle(float x, float y) {
    loc = new PVector(x, y);
    vel = new PVector (random(-1, 1), random(-2, 0));
    acc = new PVector (0, 0.1);
    d = 10;
    life = int(random(20,200));
  }

  void display () {
    fill(255, 201, 64, life);
    noStroke();
    ellipse(loc.x, loc.y, d, d);
  }

  void update() {
    loc.add(vel);
    vel.add(acc);
    life--;
  }
}
