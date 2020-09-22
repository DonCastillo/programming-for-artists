int swap = 0;

void setup(){
  size(200, 200);
  background(120);
  noStroke();
}

void draw(){
  fill(0);
}

void mousePressed(){
  if(swap == 0){
     swap = 255; 
  } else {
     swap = 0 ; 
  }
  fill(swap);
  ellipse(width/2, height/2, 100, 100);
}
