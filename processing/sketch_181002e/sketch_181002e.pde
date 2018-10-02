// Pixels Array
// https://processing.org/reference/pixels.html

void setup() {
  size(600, 600);
}

void draw() {
  mybackground(255-mouseX, 255-mouseY, 255-mouseX);
}



void mybackground(int r, int g, int b) {
  loadPixels();
  
  float s = millis()/1000.0;
  
  for(int i=0; i<pixels.length; i++){
    pixels[i] = color(r, g, b);
  }
  
  float e = millis()/1000.0;
  println(e-s);
  
  updatePixels();
}
