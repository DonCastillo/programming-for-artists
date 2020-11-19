PImage img;

void setup(){
  size(400, 500);
  background(0);
  imageMode(CENTER);
  img = loadImage("QueenOfClubs2.jpg");
}

void draw(){
  image(img, width/2, height/2);
  color c = get(mouseX, mouseY);
  fill(c);
  rect(20, 30, 90, 40);
  println(" mouseX : " + mouseX + " mouseY : " + mouseY);
}
