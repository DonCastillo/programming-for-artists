void setup(){
  size(1800, 400);
}

void draw() {
  background(143, 136, 162);
  stroke(172, 5, 173);
  line(50, mouseY, width-50, pmouseY);
  line(mouseX, 50, pmouseX, height-50);
  //print(mouseX);
  //println(mouseX);
  println("mouseX: " + mouseX);
}
