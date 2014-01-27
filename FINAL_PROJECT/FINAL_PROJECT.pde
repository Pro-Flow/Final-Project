ArrayList <Particle> particles = new ArrayList<Particle>();
Puck p1;
Mallet m1;
Mallet m2;
Bonus b1;
Rectangle rect;
float x=0;
float y=0;
float threshold = 3000;
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
//The text for the instruction screen is below
String s = "Player 1 uses arrow keys to move mallet. Player 2 uses W,A,S,D keys to move other mallet. Push the puck into the opposite goal, while guarding the goal on your side. The first player to reach 10 points wins. Press p to end the game. Press b to go back to the start screen.";

void setup () {
  size(800, 500);
  p1 = new Puck();
  m1 = new Mallet(width/6, height*.5, 0);
  m2 = new Mallet(width*5/6, height*.5, 1);
  b1 = new Bonus();
  rect = new Rectangle();
  gameOver = false;
  instructions = false;
  score1 = 0;
  score2 = 0;
  world = loadImage("earthlights.jpg");
  galaxy = loadImage("space.jpg");
  sky = loadImage("starrysky.jpg");
  textAlign(CENTER);
}

void draw() {
  if (!run) {// if run is not true then start screen is displayed
    textSize(15);
    background(galaxy);
    textSize(30);
    text("Welcome to Astro Hockey!", width/2, height/5);
    textSize(15);
    fill(17, 4, 142);
    rect(350, 200, 100, 100, 30); // start button
    fill(255);
    text("Start", 400, 250); 
    fill(17, 4, 142);
    rect(350, 350, 100, 100, 30); //instructions button
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
      p1.reset();
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
      //adding time when bonus items come up (at 3 and 5 minutes)
      if (millis() - oldTime >= threshold) {
        threshold-=10;
        oldTime = millis();
      }
//            if (millis() == 1800) {
//             b1.display();
//              b1.reset();
//             b1.touch();
//            }
//           if (millis() == 3000) {
//              b1.display();
//              b1.reset();
//             b1.touch(p1);
//           }
      //this displays the score
      textAlign(CENTER);
      textSize(30);
      fill(255);
      text(score1, width/6, height/6);
      text(score2, width*0.8, height/6);
    }
  }
  if (instructions==true) {//if instructions is pressed then they are displayed 
    background(sky);
    fill(255);
    textSize(20);
    textAlign(CENTER);
    text(s, width/6, height/6, 500, 300);
  }
  if (keyPressed) {//back button that returns to the start screen
    if (key == 'b') {
      run = false;
      instructions = false;
    }
  }


  if (score1 >= 10|| score2 >= 10) {//game is over when score is  10
    gameOver = true;
  }
  if (gameOver == true) {
    //displays game over screen with exit button
    background(0);  
    fill(255); 
    textSize(75);
    textAlign(CENTER);
    text("GAME OVER", width/2, height/4);
    //game over button
    rectMode(CENTER);
    fill(17, 4, 142); 
    rect(width*3/4, height*3/4, 100, 100, 30); 
    //game over button text
    fill(255);
    textSize(25);
    text("END", width*3/4, (height*3/4)+10);
    //close the game
    if (mousePressed == true) { //if you press the mouse on the game over screen, game will close
      if (mouseX > (width*3/4)-50 && mouseX < (width*3/4)+50 && mouseY > (height*3/4)-50 && mouseY < (height*3/4)+50) { 
        exit();
      }
    }
  }
}

void mouseClicked() {
  if (mouseX>350 && mouseX<450 && mouseY>200 && mouseY<300) {//click to start game
    if (!instructions) {
      run = true;
    }
  }
  if (mouseX<350 && mouseX>0 && mouseY<200 && mouseY>300) {
    run=false;
  }
  if (mouseX>350 && mouseX<450 && mouseY>350 && mouseY<450) {//click to read instructions
    instructions = true;
  }
  if (mouseX<350 && mouseX>450 && mouseY<350 && mouseY>450) {
    instructions = false;
  }
}

void keyPressed() {
  //Press p to end game
  if (key == 'p') {
    gameOver = !gameOver;
  }
}

