float circleX, circleY;
float diam;
float r, g, b;


void setup(){
  size(400, 400);
  background(255);
  frameRate(10); // how fast the animation will be
}

void draw(){
  //fill();
  circleX = random(width);  //typecasting
  circleY = random(height);
  diam = random(20, 300);
  r = random(255);
  g = random(30, 60);
  b = random(255);
  fill(r, g, b, 70);
  ellipse(circleX, circleY, diam, diam);
}
