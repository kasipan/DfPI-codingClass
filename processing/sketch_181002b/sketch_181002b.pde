// draw balls

void setup() {
  size(600, 600);
  ellipseMode(CENTER);
  noStroke();
}

void draw() {
  background(255, 255, 0);
  translate(height/2, width/2);
  for(int i=0; i<3; i++) {
    drawCircle(100*cos(i*90), 100*sin(i*90));
  }
}


void drawCircle(float x, float y) {
  for (int i=0; i<10; i++) {
    int mi = i % 3;
    if (mi == 2) {
      fill(255, 20, 20);
    } else if (mi == 1) {  // modoulo(remainder)
      fill(20, 255, 20);
    } else {
      fill(20, 20, 255);
    }
    ellipse(x, y, 100-i*10, 100-i*10);
  }  
}
