void setup() {
  size(400, 400);


}

void draw() {
   background(255);

  int stop = 50;
  int mX = constrain(mouseX, 0 + stop, width - stop); // constrain(amt, low, high);
  int mY = constrain(mouseY, 0 + stop, height - stop);
  
  translate(mX, mY);
  ellipse(0, 0, 50, 50);
  
}
