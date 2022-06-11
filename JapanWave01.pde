import processing.pdf.*;

boolean saveOneFrame = false;
void setup() {
  size(1024, 1024);
}
void draw() {
  if(saveOneFrame == true) {
    beginRecord(PDF, "Line.pdf"); 
  }
  background(255);


  float r = 128;
  float count = 4;

  for (int j = 0; j<20; j=j+1) {
    for (int i = 0; i<20; i=i+1) {

      strokeWeight(4.4);
      stroke(#0CB8E5);
      fill(255);
      waveCircle(i*r+r*0.50, j*r+r*-0.50, r, count);

      waveCircle(i*r, j*r+r*-0.25, r, count);

      waveCircle(i*r-r*1.50, j*r+r*0.00, r, count);
    }
  }
    if(saveOneFrame == true) {
    endRecord();
    saveOneFrame = false; 
  }
}

void waveCircle(float x, float y, float r, float count) {
  for (float i = count; i>=1; i=i-1) {
    circle(x, y, i*(r/count));
  }
}
void mousePressed() {
  saveOneFrame = true; 
}
