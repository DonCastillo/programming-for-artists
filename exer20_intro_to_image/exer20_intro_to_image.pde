PImage img;
PImage img2;

void setup(){
  size(1300, 680);
  background(0);
  img = loadImage("image1.jpg");
  img2 = loadImage("image4.jpg");
  
  //img2.filter(BLUR, 6);
  //img2.filter(INVERT);
  img2.filter(ERODE);
  img2.filter(ERODE);
  img2.filter(ERODE);
  img2.filter(ERODE);
  img2.filter(ERODE);
  img2.filter(ERODE);
  img2.filter(ERODE);
}

void draw(){
  pushStyle();  // all styles below are applied until popStyle() is encountered
  tint(100, 130, 155, 130);
  image(img, 40, 40);
  popStyle();
  
  //noTint();
  image(img2, width/2 + 200, 20);

}
