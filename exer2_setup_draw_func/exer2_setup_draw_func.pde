void setup(){
  size(600, 600);
  background(255);
  noStroke();
  rectMode(CENTER);
}

void draw(){
  background(255);
  fill(255, 0, 0);
  //rect(width/2, height/2, 100, 100);
  rect(mouseX, -mouseY+height, 100, 100);
  // runs 60 frames per second
}
