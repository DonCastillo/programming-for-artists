Circle circle1; // counter clockwise
Circle circle2; // clockwise

void setup() {
  size(400, 400);
  circle1 = new Circle(15, 200, 30, 1.5, color(255, 0, 0));
  circle2 = new Circle(width - 15, height - 200, 30, 1.5, color(0, 255, 0));
}

void draw(){
  background(0);
  circle1.moveY();
  circle1.moveX();
  circle1.display();
  
  circle2.moveY();
  circle2.moveX();
  circle2.display();
}
