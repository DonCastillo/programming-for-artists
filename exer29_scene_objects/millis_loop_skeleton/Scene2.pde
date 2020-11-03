class Scene2 {

  float x, y, diam;
  
  Scene2(float tempX, float tempY, float tempDiam) {
    x = tempX;
    y = tempY;
    diam = tempDiam;
  }
  
  void displayScene() {
    rect(random(x), random(y), diam, diam);
  }

}
