boolean run;
boolean gameOver;

void setup (){
  size(800, 500);
  background (0);
  run = false;
  gameOver = false;
}

void draw(){
  if(!run){
    //insert start screen graphics here
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
    

