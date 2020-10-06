
// rewrite this with 3 custom functions
float x = 0;

void setup() {
 size(400, 400); 
}


void draw() {
  
  background(255);
  
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(x, 100, 50, 50);
  
  x = x + 1;
  
  if (x > 200) {
   x = 100; 
  }
}
