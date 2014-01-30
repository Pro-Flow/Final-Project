 class Rectangle  {
  int vertwidth;
  int vertheight;
  int horiwidth;
  int horiheight;

  Rectangle () {
    vertwidth = 15;
    vertheight = 150;
    horiwidth = 385;
    horiheight = 15;
  }

  void display() {
    //rectangular borders for the background
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
  }
}

