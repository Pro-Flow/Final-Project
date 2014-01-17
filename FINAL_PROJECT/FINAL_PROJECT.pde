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
int horiwidth1=390;
int horiwidth2=380;
int horiheight=15;
int d = 2;
PImage world;

void setup () {
  p1 = new puck();
  m1 = new mallet();
  m2 = new mallet();
  size(800, 500);
  background (0);
  run = false;
  gameOver = false;
  instructions = false;
  score1 = 0;
  score2 = 0;
  world=loadImage("bg.jpg");
}

void draw() {
  if (!run) {
    background(0);
    rect(400, 200, 100, 100); // start button
    text("Start", 400, 300); 
    rect(400, 350, 100, 100); //instructions button
    text("Instructions", 400, 360);
  }
  if (run) {
    background(0);
    stroke(155, 144, 144);//2 goals
    fill(0);
    ellipse(0, 250, 170, 140);
    ellipse(800, 250, 170, 140);
    strokeWeight(8);//center circle
    ellipse(400, 250, 200, 200);
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
    rect(10, 10, horiwidth1, horiheight, 20);//h
    rect(10, 30, vertwidth, vertheight, 20);//v
    stroke(255, 0, 0);//red rectangle
    rect(10, 475, horiwidth1, horiheight, 20);//h
    rect(10, 320, vertwidth, vertheight, 20);//v
    stroke(0, 255, 0);//green rectangle
    rect(410, 10, horiwidth2, horiheight, 20);//h
    rect(775, 30, vertwidth, vertheight, 20);//v
    stroke(0, 0, 255);//blue rectangle
    rect(410, 475, horiwidth2, horiheight, 20);//h
    rect(775, 320, vertwidth, vertheight, 20);//v
    stroke(190);
    line(405, 10, 405, 490);
    p1.display();
    p1.bounce();
    p1.reset();
    m1.display();
    m1.arrows();
    //m1.checkPuck(p1);
    m2.display();
    m2.wasd();
    //m2.checkPuck(p1);
    if (instructions == true) {
      text("Here are the instructions:", width/4, height/4);
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
}


void mousePressed() {
  if (mouseX>400 && mouseX<500 && mouseY>200 && mouseY<300) {//click to start game
    run = true;
  }
  if (mouseX<400 && mouseX>500 && mouseY<200 && mouseY>300) {
    run=false;
  }
  if (mouseX>400 && mouseX<500 && mouseY>350 && mouseY<450) {
    instructions = true;
  }
  if (mouseX<400 && mouseX>500 && mouseY<350 && mouseY>450) {
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

