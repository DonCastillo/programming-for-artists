int circleX = 200;
int rectX = 0;
int rectY = 0;
void setup(){
  size(400, 400);
  background(255);
  //circleX = width/2;
}

void draw(){
  background(255);
  ellipse(circleX, height/2, 100, 100);
  circleX = circleX - 1;
  //circleX++ // incrementing
  rect(rectX++, rectY++, 20, 20);
}
