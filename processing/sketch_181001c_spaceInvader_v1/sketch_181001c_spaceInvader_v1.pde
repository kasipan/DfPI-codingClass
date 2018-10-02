// Space Invaider 
Shooter shooter;
Bullet bullet;

void setup() {
  size(500, 800);
  rectMode(CENTER);
  shooter = new Shooter();
  bullet = new Bullet(shooter.pos, height - 60);
}

void draw() {
  if (keyPressed) {
    if (keyCode == LEFT) {
      shooter.moveLeft();
    }
    if (keyCode == RIGHT) {
      shooter.moveRight();
    }

    // shooting
    if (key == ' ') {
      bullet.fired = true;  // bullet.x fixed
    }
  }
  
  bullet.update(shooter.pos);

  background(0);
  shooter.draw();
  bullet.draw();
  
}

//void keyPressed() {
//  if (keyCode == LEFT) {
//    shooter.moveLeft();
//  }
//  if (keyCode == RIGHT) {
//    shooter.moveRight();
//  }
//}
