void setup(){
  size(400, 400);
  background(255);
}

void draw(){
  //ellipse(20, 20, 30, 30);
  //ellipse(60, 20, 30, 30);
  //ellipse(100, 20, 30, 30);
  int circleX = 20;
  int space = 40;
  
  if(mousePressed){
      while(circleX <= width){
      int circleY = 20;
      
      while(circleY <= height){
        if(random(125) > 50){
          fill(0,0,255);
        }else{
          fill(random(255),0,0); 
        }
          ellipse(circleX, circleY, 30, 30);
          circleY = circleY + space;
      }
  
      circleX = circleX + space;
      
    }
  }

}
