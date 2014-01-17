class mallet {

  PVector loc, vel;
  float d;
  color c;

  mallet () {
    loc = new PVector (random(width), random(height));
    vel =  new PVector(random(-1, 1), random(-2, 0));
    d = 30;
    c = color(random(360), 100, 100);
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void keyPressed() {
    //wasd
    if (key == 'w') {
      y--;
    }
    if (key == 'a') {
      x--;
    }
    if (key == 's') {
      y++;
    }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
    }     
=======
>>>>>>> origin/Skeleton
=======
    if (key =='d') {
      x++;
>>>>>>> origin/Skeleton
    }
    if (key == 'w' && key == 'a') {
      x--;
      y--;
    }
<<<<<<< HEAD
      
<<<<<<< HEAD
=======
    }     
>>>>>>> origin/Skeleton
=======
>>>>>>> origin/GRAPHICS
>>>>>>> origin/Skeleton
    
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
        if(keyCode == DOWN){
          y++;
        }
        if(keyCode == LEFT && keyCode == UP){
          x--;
          y--;
      }
      if(keyCode == RIGHT && keyCode == UP){
        x++;
        y--;
=======
    if (key == 'w' && key == 'd') {
      x++;
      y--;
>>>>>>> origin/Skeleton
    }
    if (key == 's' && key == 'a') {
      x--;
      y++;
    }
    if (key == 's' && key == 'd') {
      x++;
      y++;
    }
  }     

  void arrows() {
    //WASD & Arrow Key movement
    if (keyPressed && key == CODED) {
      if (keyCode == LEFT) {
        x--;
      }
      if (keyCode == UP) {
        y--;
      }
      if (keyCode == RIGHT) {
        x++;
      }
      if (keyCode == DOWN) {
        y++;
      }
      if (keyCode == LEFT && keyCode == UP) {
        x--;
        y--;
      }
      if (keyCode == RIGHT && keyCode == UP) {
        x++;
        y--;
      }
      if (keyCode == DOWN && keyCode == LEFT) {
        x--;
        y++;
      }
      if (keyCode == DOWN && keyCode == RIGHT) {
        x++;
        y++;
      }
    }
  }

  /*void move(){
   void keyPressed(){
   void arrows(){
   }
   }
   }
   */
  void checkPuck(puck p1) {
    if (loc.dist(p1.loc) < d/2 + p1.d/2) {
      vel.mult(-1);
    }
  }
}



