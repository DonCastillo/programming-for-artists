class Circle {
  
  // variables
  float x;
  float y;
  float diam;
  float speed;
  float yDirection = 1;
  float xDirection = 1;
  color fill;
  
  // constructor
  Circle(float tempX, float tempY, float tempDiam, float tempSpeed, color tempFill) {
    x = tempX;
    y = tempY;
    diam = tempDiam;
    speed = tempSpeed;
    fill = tempFill;
  }
  
  // methods
  void display() {
    fill(fill);
    ellipse(x, y, diam, diam);
  }
  
  void moveY() {
    y += (speed * yDirection);
    if(y > height - diam/2 || y < diam/2) {
      yDirection *= -1;
    } 
  }
  
  void moveX() {
    x += (speed * xDirection);
    if(x > height - diam/2 || x < diam/2) {
      xDirection *= -1;
    } 
  }
  
  

};
