float x, y;
float xDc = 0;    // lerping circle start
float yDc = 0;
float destx = 0;  // lerping circle destination
float desty = 0;

void setup(){
  size(600, 600);
  //fullScreen(P3D, SPAN);
  rectMode(CENTER);
  destx = random(width);
  desty = random(height);
}

void draw(){
  background(255);
  // map(value, start1, stop2, start2, stop2)
  x = map(mouseX, 0, width, 100, width - 100);
  y = map(mouseY, 0, height, 100, height - 100);
  fill(x, 0, y);
  rect(x, y, 100, 100);
  lerpDc();
}

void lerpDc() {
  xDc = lerp(xDc, destx, 0.1); // lerp(start, stop, amount)
  yDc = lerp(yDc, desty, 0.1);
  float d = dist(xDc, yDc, destx, desty); // dist(x1, y2, x2, y2);
  //float xDc = map(mouseX, 0, width, 100, width - 100);
  //float yDc = map(mouseY, 0, height, 100, height - 100);
  if(d < 0.5){
    destx = random(width);
    desty = random(height);
  }
  if(d < 100){
    noFill(); // ring
    //\stroke(0, xDc, 0);
    stroke(0, 255, 0);
    ellipse(xDc, yDc, 100 - d, 100 - d);
    
    noStroke(); // ring
    //stroke(0, yDc, 0);
    fill(0, 255, 0);
    ellipse(xDc, yDc, 20, 20);
  }
}
