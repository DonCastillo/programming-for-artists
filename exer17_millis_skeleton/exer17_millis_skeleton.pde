int startTime;

void setup() {
  size(600, 400);
  background(255);
}


void draw() {
  background(255);
  //int m = millis();
 runScenes();  // this contains all the if / else if timing conditions


}

void runScenes(){
   int m = millis() - startTime;
  
  if(m < 2000){
    scene1();
  }
  
  else if(m < 5000){
    scene2();
  }

  else if(m < 10000){
    scene3();
  }
  
  else if(m >= 10000){
    startTime = millis();
  }
}

void scene1() {
  ellipse(random(width), random(height), 100, 100);

}

void scene2() {
   rect(random(width), random(height), 100, 100);


}

void scene3() {
  float x = random(width);
  line(x, 0, x, height);

}
