// Bounce balls
Ball ball;

void setup() {
  size(600, 600);
  noStroke();
  ball = new Ball(100, 100);
}

void draw() {
  background(255, 255, 0);
  ball.draw();
  
  
  if(ball.pos.x > width) {
    ball.vel.x *= -1;
  } else if(ball.pos.x < 0) {
    ball.vel.x *= -1;
  }
  
  if(ball.pos.y > height) {
    ball.vel.y *= -1;
  } else if(ball.pos.y < 0) {
    ball.vel.y *= -1;
  }
  
  ball.update();
  
}
