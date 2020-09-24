void setup(){
  size(200, 200);
  background(255);
  noStroke();
}


void draw() {
  if(mousePressed == true){
    fill(255, 0, 0); 
  } else {
    fill(0);
  }
  ellipse(width/2, height/2, 100, 100);
}
