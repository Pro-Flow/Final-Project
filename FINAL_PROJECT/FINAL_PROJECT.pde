ArrayList <Particle> particles = new ArrayList<Particle>();
ArrayList<Bonus> bonus = new ArrayList<Bonus>();
Puck p1;
Mallet m1;
Mallet m2;
//Bonus b1;
Rectangle rect;
GameOver g;
Restart r;
float x=0;
float y=0;
float threshold = 15000;
boolean run;
boolean gameOver;
boolean instructions;
int score1;
int score2;
int oldTime = 0;
int d = 2;
PImage world;
PImage galaxy;
PImage sky;
PImage alien1;
PImage earth;
//The text for the instruction screen is below
String s = "Player 1 uses arrow keys to move mallet. Player 2 uses W,A,S,D keys to move other mallet. Push the puck into the opposite goal, while guarding the goal on your side. The first player to reach 15 points wins. Press p to end the game. Press b to go back to the start screen.";

void setup () {
  size(800, 500);
  p1 = new Puck();
  m1 = new Mallet(width/6, height*.5, 0);
  m2 = new Mallet(width*5/6, height*.5, 1);
  g = new GameOver();
  r = new Restart();
  rect = new Rectangle();
  gameOver = false;
  instructions = false;
  score1 = 0;
  score2 = 0;
  world = loadImage("earthlights.jpg");
  galaxy = loadImage("space.jpg");
  sky = loadImage("starrysky.jpg");
  alien1 = loadImage("SpaceInvaders1.jpg");
  earth = loadImage("earth.jpg");
  textAlign(CENTER);
}

void draw() {
  println(millis()-oldTime);
  // if run is not true then start screen is displayed
  if (!run) {
    textSize(15);
    background(galaxy);
    textSize(30);
    text("Welcome to Astro Hockey!", width/2, height/5);
    textSize(15);
    // start button
    fill(17, 4, 142);
    rect(350, 200, 100, 100, 30); 
    fill(255);
    text("Start", 400, 250); 
    //instructions button
    fill(17, 4, 142);
    rect(350, 350, 100, 100, 30); 
    fill(255);
    text("Instructions", 400, 400);
  }

  if (run) {
    //This is the actual code for the game
    background(world);
    stroke(155, 144, 144);//2 goals
    noFill();
    ellipse(0, 250, 170, 140);
    ellipse(800, 250, 170, 140);
    strokeWeight(8);//center circle
    noFill();
    ellipse(width/2, height/2, 200, 200);
    line(width/2, 10, width/2, 490);
    stroke(255);
    noStroke();//little air holes
    fill(190);
    //This creates the dots for the air holes
    for (int x=d/2; x<width; x+=10) {
      for (int y=d/2; y<height; y+=10) {
        ellipse(x, y, d, d);
      }
    }
    rect.display();//displays the rectangles for the border
    //particles that add the effect on the mallets
    for (int i = 0; i < 5; i++) {
      particles.add(new Particle(m1.loc));
      particles.add(new Particle(m2.loc));
    }
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.display();
      p.update();
      if (p.life <= 0 ) {
        particles.remove(i);
      }
    }
    p1.reset();
    //this is so that the puck bounces off the individual mallets
    if (p1.loc.dist(m1.loc) < p1.d/2 + m1.d/2) {
      m1.bounce();
    }      
    if (p1.loc.dist(m2.loc) < p1.d/2 + m2.d/2) {
      m2.bounce();
    }
    stroke(255);
    //calling functions
    p1.display();
    p1.update();
    m1.display();
    m1.wasd();
    m2.display();
    m2.arrows();
    //adding time when bonus items come up (at 20 seconds after a score passes 5)
    if (millis() - oldTime >= threshold) {
      threshold-=10;
      oldTime = millis();
      if (score1 > 5 || score2 > 5) {
        bonus.add(new Bonus());
      }
    }
    //score increases by 2 if the mallets hit the bonus and goes away after mallet hits it
    for (int i = bonus.size()-1; i >= 0; i--) {
      Bonus b = bonus.get(i);
      b.display();
      b.update();
      if (b.life <= 0) {
        bonus.remove(i);
      }
      else if (b.touch(m1)) { 
        score1+=2;
        bonus.remove(i);
      }
      else if (b.touch(m2)) {
        score2+=2;
        bonus.remove(i);
      }
    }
    //this displays the score
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text(score1, width/6, height/6);
    text(score2, width*0.8, height/6);
  }

  //if instructions button is pressed then it is displayed 
  if (instructions==true) {
    background(sky);
    fill(255);
    textSize(20);
    textAlign(CENTER);
    text(s, width/6, height/6, 500, 300);
  }
  //back button that returns to the start screen
  if (keyPressed) {
    if (key == 'b') {
      run = false;
      instructions = false;
    }
  }

  //game is over when score is  15
  if (score1 >= 15|| score2 >= 15) {
    gameOver = true;
  }

  if (gameOver == true) {
    //if game is over the following is displayed with the end and restart buttons. puck and mallets are resetted.
    g.alien();
    g.overButton();
    r.display();
    r.clickRestart();
    p1 = new Puck();
    m1 = new Mallet(width/6, height*0.5, 0);
    m2 = new Mallet(width*5/6, height*0.5, 1);
  }
}


void mouseClicked() {
  //These are the buttons on the start screen
  if (mouseX>350 && mouseX<450 && mouseY>200 && mouseY<300) {
    //click to start game
    run = true;
  }
  if (mouseX<350 && mouseX>0 && mouseY<200 && mouseY>300) {
    run=false;
  }
  if (mouseX>350 && mouseX<450 && mouseY>350 && mouseY<450) {
    //click to read instructions
    instructions = true;
  }
  if (mouseX<350 && mouseX>450 && mouseY<350 && mouseY>450) {
    instructions = false;
  }
}

void keyPressed() {
  //Press p to end or pause game
  if (key == 'p') {
    gameOver = !gameOver;
  }
}

