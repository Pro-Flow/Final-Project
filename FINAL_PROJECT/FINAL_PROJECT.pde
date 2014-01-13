
void setup() {
  size(800,500);
  rectMode(CORNER);
}
void draw() {
  background(0);
  noStroke();
  strokeWeight(4);
  stroke(238,242,51); //yellow rectangle
  rect(10,10,390,15,20);
  rect(10,30,15,150,20);
  stroke(255,0,0);//red rectangle
  rect(10,320,15,150,20);
  rect(10,475,380,15,20);
  stroke(0,255,0);//green rectangle
  rect(410,10,380,15,20);
  rect(775,30,15,150,20);
  stroke(0,0,255);//blue rectangle
  rect(775,320,15,150,20);
  rect(410,475,380,15,20);
}
