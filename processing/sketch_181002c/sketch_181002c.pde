// Bounce balls
Ball ball;

void setup() {
  size(600, 600);
  noStroke();
  ball = new Ball(random(0,width), random(0,height));
}

void draw() {
  background(255, 255, 0);
  ball.draw();
  
  
  if(ball.pos.x > width-ball.radius/2) {
    ball.vel.x *= -1;
  } else if(ball.pos.x < ball.radius/2) {
    ball.vel.x *= -1;
  }
  
  if(ball.pos.y > height-ball.radius/2) {
    ball.vel.y *= -1;
  } else if(ball.pos.y < ball.radius/2) {
    ball.vel.y *= -1;
  }
  
  ball.update();
  
}
