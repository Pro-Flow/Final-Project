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


void setup (){
  size(800, 500);
  background (0);
  run = false;
  gameOver = false;
  instructions = false;
  score1 = 0;
  score2 = 0;
}

void draw(){
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
  line(405,10,405,490);
  
  
  if(!run){
    //insert start screen graphics here
  }
  if(!run && !gameOver){
    instructions = true;
  }
  if(instructions == true){
    //display instruction screen here
    
  }
  if(run){
    //insert code for game here
  }
  if(score >= 10){
    gameOver = true;
  }
  if(gameOver == true){
    //insert end screen  here
  }
}

void mousePressed(){
  //click to start game
  run = !run;
}

void keyPressed(){
  //I think this will pause game, now sure yet lol
  //Press p to pause
  if(key == 'p'){
  gameOver = !gameOver;
}
}
    

