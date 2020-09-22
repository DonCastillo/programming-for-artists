void setup(){
  size(400, 400);
  background(255);
  noStroke();
  mouseX = width/4;
  mouseY = height/4;
}

void draw(){
  background(255);
  
  // first quadrant, red
  if(mouseX < width/2 && mouseY < height/2){
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 100, 100);
  }
  
  // second quarter, blue
  if(mouseX > width/2 && mouseY < height/2){
    fill(0, 0, 255);
    ellipse(mouseX, mouseY, 100, 100);
  }
  
  // third quadrant, 
  if(mouseX < width/2 && mouseY > height/2){
    fill(0, 255, 0);
    ellipse(mouseX, mouseY, 100, 100);
  }
  
  // fourth quadrant
  if(mouseX > width/2 && mouseY > height/2){
    fill(255,255,0);
    ellipse(mouseX, mouseY, 100, 100);
  }
  
  
}
