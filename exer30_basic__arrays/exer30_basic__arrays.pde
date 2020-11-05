String [] covidWords = {"COVID", "isolation", "mental health", "friends", "family", "security", "distance"};

PFont font;

void setup(){
  size(600, 600);
  textAlign(CENTER);
  frameRate(20);
  font = createFont("Times-Roman", 48);
  textFont(font);
}

void draw(){
  fill(255, 25);
  rect(0, 0, width, height);
  fill(random(255), random(255), random(255));
  text(covidWords[int(random(7))], random(width), random(height));
}
