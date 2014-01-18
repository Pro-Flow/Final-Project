float x=0;
float y=0;
puck p1;
mallet m1;
mallet m2;
boolean run;
boolean gameOver;
boolean instructions;
int score1;
int score2;
int vertwidth=15;
int vertheight=150;
int horiwidth=385;
int horiheight=15;
int d = 2;
PImage world;

void setup () {
  p1 = new puck();
  m1 = new mallet();
  m2 = new mallet();
  size(800, 505);
  background (0);
  run = false;
  gameOver = false;
  instructions = false;
  score1 = 0;
  score2 = 0;
  world = loadImage("bg.jpg");
  textAlign(CENTER);
}

void draw() {
  if (!run) {
    textSize(15);
    background(0);
    fill(20, 100, 100);
    rect(350, 200, 100, 100); // start button
    fill(255, 0, 0);
    text("Start", 400, 250); 

    fill(20, 100, 100);
    rect(350, 350, 100, 100); //instructions button
    fill(255, 0, 0);
    text("Instructions", 400, 400);
  }
  if (run) {
    background(world);
    stroke(155, 144, 144);//2 goals
    noFill();
    ellipse(0, 250, 170, 140);
    ellipse(800, 250, 170, 140);
    strokeWeight(8);//center circle
    noFill();
    ellipse(width/2, height/2, 200, 200);
    noStroke();//little air holes
    fill(190);
    for (int x=d/2; x<width; x+=10) {
      for (int y=d/2; y<height; y+=10) {
        ellipse(x, y, d, d);
      }
    }
    fill(255);
    strokeWeight(4);
    stroke(238, 242, 51); //yellow rectangle
    rect(10, 10, horiwidth, horiheight, 20);//h
    rect(10, 30, vertwidth, vertheight, 20);//v
    stroke(255, 0, 0);//red rectangle
    rect(10, 475, horiwidth, horiheight, 20);//h
    rect(10, 320, vertwidth, vertheight, 20);//v
    stroke(0, 255, 0);//green rectangle
    rect(405, 10, horiwidth, horiheight, 20);//h
    rect(775, 30, vertwidth, vertheight, 20);//v
    stroke(0, 0, 255);//blue rectangle
    rect(405, 475, horiwidth, horiheight, 20);//h
    rect(775, 320, vertwidth, vertheight, 20);//v
    stroke(190);
    line(width/2, 10, width/2, 490);
    m1.display();
    m1.arrows();
    m1.checkPuck(p1);
    m2.display();
    m2.wasd();
    m2.checkPuck(p1);
    p1.display();
    p1.bounce();
    p1.reset();
    if (instructions == true) {
      background(0);
      text("Here are the instructions:", width/2, height/2);
  }
    
    if (key == 'b') {
      run = false;
      //display instruction screen here
    }
    if (score1 >= 10|| score2 >= 10) {
      gameOver = true;
    }
    if (gameOver == true) {
      run = false;

      if (key == 'r') {
        run = true;
      }
    }
    //insert end screen  here
  }
}


void mousePressed() {
  if (mouseX>350 && mouseX<450 && mouseY>200 && mouseY<300) {//click to start game
    run = true;
  }
  if (mouseX<350 && mouseX>0 && mouseY<200 && mouseY>300) {
    run=false;
  }
  if (mouseX>350 && mouseX<450 && mouseY>350 && mouseY<450) {
    instructions = true;
  }
  if (mouseX<350 && mouseX>450 && mouseY<350 && mouseY>450) {
    instructions = false;
  }
}


void keyPressed() {
  //I think this will pause game, now sure yet lol
  //Press p to pause
  if (key == 'p') {
    gameOver = !gameOver;
  }
}

