PImage img;
int y = 0;

void setup(){
  size(400, 800);
  background(0);
  imageMode(CENTER);
  img = loadImage("QueenOfClubs2.jpg");
}

void draw(){
  image(img, width/2, height/2 + 200);
  y = constrain(mouseY, 0, height); // read column of pixels
  for(int x = 0; x < width; x++) {
    color c = get(x, y);
    stroke(c);
    line(x, y, x, 400);
  }
  
}
