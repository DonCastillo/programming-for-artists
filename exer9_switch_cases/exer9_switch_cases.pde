int r, g, b;

void setup(){
  size(400, 400);
  r = 0;
  g = 0;
  b = 0;
}

void draw(){
  background(r, g, b);
}

void keyPressed(){
  switch(key){
    case 'r':
    case 'R':
      r = 255;
      g = 0;
      b = 0;
      break;
    case 'g':
    case 'G':
      r = 0;
      g = 255;
      b = 0;
      break;
    case 'b':
    case 'B':
      r = 0;
      g = 0;
      b = 255;
      break;
  }
  switch(keyCode){
    case LEFT:
      r = 255;
      g = 0;
      b = 255;
      break;
    case RIGHT:
      r = 0;
      g = 255;
      b = 255;
      break;
  }
}
