// Array
int NUM_COLUMNS = 4;  // constant
int[] cols = new int[NUM_COLUMNS];
int xWidth;

void setup() {
  size(600, 600);
  stroke(255, 120, 0);
  xWidth = width/cols.length;

  for (int i=0; i<cols.length; i++) {
    cols[i] = 0;
  }
}

void draw() {
  if (keyPressed) {
    //for (int i=0; i<cols.length; i++) {
    //  if (mouseX > i*xWidth && mouseX < (i+1)*xWidth) {
    //    cols[i]++;
    //  }
    //}
    
    cols[mouseX/xWidth] ++;
  }

  for (int i=0; i<cols.length; i++) {
    fill(cols[i]);
    rect(i*xWidth, 0, xWidth, height);
  }
}
