// draw balls

void setup() {
  size(600, 600);
  ellipseMode(CENTER);
  noStroke();
}

void draw() {
  background(255, 255, 0);

  for (int i=0; i<50; i++) {
    int mi = i % 3;
    //println(mi);
    if (mi == 2) {
      fill(255, 60, 60);
    } else if (mi == 1) {  // modoulo(remainder)
      fill(60, 255, 60);
    } else {
      fill(60, 60, 255);
    }
    ellipse(width/2, height/2, width-i*mouseX/30, height-i*mouseY/30);
  }
}
