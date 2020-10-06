void setup(){
  size(600, 600);
}

void draw(){
  background(0);
  int space = 40;
  
  for(int i = 0; i < width; i++){
    for(int j = 0; j < height; j++){
      ellipse(i * space, j * space, 30, 30);
    } 
  }
}
