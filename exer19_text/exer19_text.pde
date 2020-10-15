PFont myFont;

void setup(){
  String[] fontList = PFont.list();
  printArray(fontList);
  
  size(400, 400);
  background(0);
  myFont = createFont("Times New Roman", 64);
  textFont(myFont);
  textAlign(CENTER);

}

void draw(){
  text("more words.", width/2, height/2);
}
