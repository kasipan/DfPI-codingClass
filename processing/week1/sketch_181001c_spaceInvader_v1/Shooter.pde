class Shooter {
  int pos;
  int rectWidth;
  
  Shooter() {
    pos = width/2;
    rectWidth = 50;
  }

  void draw() {
    rect(pos, height-50, rectWidth, 50);
  }

  void moveLeft() {
    if (pos > rectWidth/2) {
      shooter.pos -= 5;
    }
  }

  void moveRight() {
    if (pos < width - rectWidth/2) {
      shooter.pos += 5;
    }
  }
}
