PFont f1;
PFont f2;

void setup(){
  size(400, 400);
  background(0);
  f1 = loadFont("AdobeSongStd-Light-48.vlw");
  textFont(f1);
  textAlign(CENTER);
  
  f2 = loadFont("Chiller-Regular-48.vlw");
  textFont(f2);
  textAlign(CENTER, BOTTOM);
}

void draw(){
  fill(255);
  text("Here you are!", width/2, height/2);
  
  fill(255, 0, 0);
  textSize(245);
  text("Happy Halloween!", width/2, height/3);
}

// make another 
