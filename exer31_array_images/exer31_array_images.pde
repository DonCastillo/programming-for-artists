PImage image1, image2, image3, image4, image5, image6, image7;
PImage[] pictureReel;
int current = 0;

void setup(){
  size(800, 800);
  imageMode(CENTER);
  image1 = loadImage("Bond1.png");
  image2 = loadImage("Bond2.png");
  image3 = loadImage("Bond3.png");
  image4 = loadImage("Bond4.png");
  image5 = loadImage("Bond5.png");
  image6 = loadImage("Bond6.png");
  image7 = loadImage("Bond7.png");
  
  pictureReel = new PImage[] {image1, image2, image3, image4, image5, image6, image7};
}


void draw(){
  background(0);
  image(pictureReel[current], width/2, height/2);
}

void mouseReleased(){
  
  if(mouseX > width/2) {
    current += 1;
    if(current > 6){
      current = 0;
    }
  }
  
  if(mouseX < width/2) {
    current -= 1;
    if(current < 0){
      current = 6;
    }
  }

}
