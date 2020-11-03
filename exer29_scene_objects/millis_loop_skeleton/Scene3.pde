class Scene3 {

  float x, y;
  
  Scene3(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }
  
  void displayScene() {
    line(random(x), 0, random(x), y);
  }


}
