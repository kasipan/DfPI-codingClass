class Bullet {
  PVector pos;
  Boolean fired;

  Bullet(float x, float y) {
    pos = new PVector(x, y);
    fired = false;
  }

  void update(float shooterX) {
    if (fired) {
      pos.y -= 5;
    } else {
      pos.x = shooterX;
    }
  }

  void draw() {
    rect(pos.x, pos.y, 4, 20);
  }
}
