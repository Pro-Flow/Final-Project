

void setup() {
  size(800,500);
}

void draw() {
  background(0);
  strokeWeight(4);
  //yellow rectangle
  stroke(238,242,51); 
  rect(10,10,390,15,20);
  rect(10,30,15,150,20);
  //red rectangle
  stroke(255,0,0);
  rect(10,320,15,150,20);
  rect(10,475,380,15,20);
  //green rectangle
  stroke(0,255,0);
  rect(410,10,380,15,20);
  rect(775,30,15,150,20);
  //blue rectangle
  stroke(0,0,255);
  rect(775,320,15,150,20);
  rect(410,475,380,15,20);
}
