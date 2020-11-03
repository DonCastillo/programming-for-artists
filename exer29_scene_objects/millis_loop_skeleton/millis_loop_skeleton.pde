int startTime;

Scene s1;
Scene s2;
Scene s3;

void setup() {
  size(760, 588);
  background(255);
  s1 = new Scene(width, height, 100);
  s2 = new Scene(width, height, 100);
  s3 = new Scene(width, height, 100);
}

void draw() {
  background(255);
  
  //int m = millis();
  int m = millis() - startTime; // if you want to loop

  if (m < 2000) { // 2 secs
    s1.displayEllipse();
  } 
  
  else if (m < 5000) { // 5 secs
    s2.displayRect();
  } 
  
  else if (m < 10000) { // 10 secs
    s3.displayLine();
  } 
  
  else if (m >= 10000) {
    startTime = millis(); // reset millis
  }
  
}
