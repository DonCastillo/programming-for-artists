void setup() {
  size(600, 600);
  background(255);
  rectMode(CENTER);
  //noStroke();
}

void draw() {
  int y1 = 0;
  int spacing = 50;
  int lineH = height;
  
  for (int x = 50; x <= width; x += spacing) {
    line(x, y1, x, y1 + lineH);
  }
  
  noStroke();
  fill(255, 0, 0);
  rect(200, 100, 100, 100);
  
  pushMatrix();
  pushStyle();
  translate(400, 100);
  scale(0.5);
  stroke(0);
  strokeWeight(3);
  fill(0, 255, 0);
  rect(0, 0, 100, 100);
  popStyle();
  popMatrix();
  
  pushMatrix();
  translate(300, 300);
  scale(2);
  rotate(degrees(PI*0.5));
  fill(0, 0, 255);
  rect(0, 0, 100, 100);
  popMatrix();
  
}
