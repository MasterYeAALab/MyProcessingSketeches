void setup() {
  size(512, 512);
}
void draw() {

  background(255);

  float r = 82;
  float count = 4;


  for (int i = 0; i<20; i=i+1) {
    for (int j = 0; j<20; j=j+1) {

      strokeWeight(2.7);
      stroke(#0CB8E5);
      fill(255);
      waveCircle(i*r+r*0.50, j*r+r*-0.50, r, count);

      waveCircle(i*r, j*r+r*-0.25, r, count);

      waveCircle(i*r-r*1.50, j*r+r*0.00, r, count);
    }
  }
}

void waveCircle(float x, float y, float r, float count) {
  for (float i = count; i>=1; i=i-1) {
    float pingPong = sin(radians((x*y*386.5+i*443.3+millis())/9.3));
    float cr = map(pingPong, -1, 1, 0, r); //i*(r/count)
    float tem = map(i,count,1,0,(r/18.3)*i);
    float yOff = map(pingPong, -1, 1, -tem, tem);
    circle(x, y+yOff, cr);
  }
}
