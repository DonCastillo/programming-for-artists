void setup() {
  size(400, 400);
  background(255);

}

void draw() {
  randomColor(255, 10, 50);
  myCircle(width/5, height/2, 100);
  
  randomColor(20, 255, 50);
  myCircle(width/2, height/2, 100);
  
  randomColor(255, 10, 255);
  myCircle(width/2 + 125, height/2, 100);
}

void myCircle(int x, int y, int diam) {
  ellipse(x, y, diam, diam);
}

void randomColor(float r, float g, float b) {
  r = random(255);
  g = random(255);
  b = random(255);
  
  noStroke();
  fill(r, g, b);
}
