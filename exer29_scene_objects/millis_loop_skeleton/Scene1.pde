class Scene1 {

  float x, y, diam;
  
  Scene1(float tempX, float tempY, float tempDiam) {
    x = tempX;
    y = tempY;
    diam = tempDiam;
  }
  void displayScene() {
    ellipse(random(x), random(y), diam, diam);
  }


}
