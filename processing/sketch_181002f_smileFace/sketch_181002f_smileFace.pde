// Drawing smile face

void setup() {
  size(600, 600);
  ellipseMode(CENTER);
}

void draw() {
  background(0);
  
  for (int x=0; x<12; x++) {
    for (int y=0; y<12; y++) {
      smile(x*50+25, y*50+25);
    }
  }
}

void smile(int x, int y) {

  pushMatrix();
  translate(x, y);

  //face
  fill(255);
  ellipse(0, 0, 50, 50);
  fill(0);
  ellipse(-10, -10, 5, 5);
  ellipse(10, -10, 5, 5);
  
  //mouth
  noFill();
  arc(0,10,10,5,0,PI);
  
  popMatrix();
}
