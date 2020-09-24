// brushcolour
color brushColor = #000000;
float strokeW = 1;

// timer that clears the drawing
int frame = 0;

// available colours
color white = #FFFFFF;
color black = #000000;
color red = #FF0852;
color green = #08FFD4;
color blue = #007493;

void setup(){
  size(400, 400);
  background(white);
  noStroke();
  
  ///////////////////////////////////// GUI buttons /////
  
  fill(red);
  rect(25, 25, 75, 75);
  
  fill(blue);
  rect(25, 125, 75, 75);
  
  ///////////////////////////////////// GUI ends ////////
}

void draw(){
  // conditions for colour picker
  if(mousePressed){
    if(mouseY > 25 && mouseY < 100 && mouseX > 25 && mouseX < 100) {
      brushColor = color(red);
    }
    if(mouseY > 125 && mouseY < 200 && mouseX > 25 && mouseX < 100) {
      brushColor = color(blue);
    }
  
  
  // attributed for the line
  stroke(brushColor);
  strokeWeight(strokeW);
  
  if (mouseX > 125){
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }
}
