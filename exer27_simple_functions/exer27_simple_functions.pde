void setup() {
  size(400, 400);
}

void draw(){
  myCircle(100, 100, 30);
  myCircle(200, 200, 50);
}

void myCircle(float x, float y, float diam){
  ellipse(x, y, diam, diam);
}
