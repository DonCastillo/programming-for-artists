class Scene {

  float x, y, diam;
  
  Scene(float tempX, float tempY, float tempDiam) {
    x = tempX;
    y = tempY;
    diam = tempDiam;
  }
  
  void displayRect() {
    rect(random(x), random(y), diam, diam);
  }
  
  void displayEllipse() {
    ellipse(random(x), random(y), diam, diam);
  }
  
  void displayLine() {
    float p = random(x); 
    line(p, 0, p, y);
  }
  

}
