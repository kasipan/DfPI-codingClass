class Ball {
  PVector pos, vel;
  int radius = 50;
  
  Ball(int x, int y){
     pos = new PVector(x, y);
     vel = new PVector(2,2);
  }
  
  void draw(){
    for (int i=0; i<10; i++) {
      int mi = i % 3;
      if (mi == 2) {
        fill(255, 20, 20);
      } else if (mi == 1) {  // modoulo(remainder)
        fill(20, 255, 20);
      } else {
        fill(20, 20, 255);
      }
      ellipse(pos.x, pos.y, radius-i*5, radius-i*5);
    }
  }
  
  void update(){
    pos.add(vel);
  }
  
}
