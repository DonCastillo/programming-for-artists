// * vertical lines, evenly spaced
// * cirlce appear on line when mouse condition met
// * demonstrates difference between if, else, and else if


void setup() {
  size(600, 540);
}

void draw() {
  background(255); // white

  if (mouseX > 500) { // need to set widest condition first and then narrow down with else if
    fill(0, 0, 255); // blue
    ellipse(500, 500, 50, 50);
  } 
  else if (mouseX > 400) { // add else if
    fill(255, 0, 0); // red
    ellipse(400, 400, 50, 50);
  } 
  else if (mouseX > 300) { // add else if
    fill(0, 255, 0); // red
    ellipse(300, 300, 50, 50);
  } 
  else if (mouseX > 200) { // add else if
    fill(255, 0, 255); // purple
    ellipse(200, 200, 50, 50);
  } 
  else if (mouseX > 100) { // add else if
    fill(255, 255, 0); // yellow
    ellipse(100, 100, 50, 50);
  }
  
  else {
 background(0); 
}

  stroke(0);
  line(100, 0, 100, height);
  line(200, 0, 200, height);
  line(300, 0, 300, height);
  line(400, 0, 400, height);
  line(500, 0, 500, height);
}
