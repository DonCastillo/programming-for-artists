void setup(){
  size(400, 400);
  background(0);
}

void draw(){
  stroke(255);
  strokeWeight(3);
  if(mousePressed){
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

//void mousePressed(){
//  stroke(255);
//  strokeWeight(3);
//  line(pmouseX, pmouseY, mouseX, mouseY);
//}

void keyPressed(){
  if(key == 'c' || key == 'C'){
    background(0);
  }
   
}
