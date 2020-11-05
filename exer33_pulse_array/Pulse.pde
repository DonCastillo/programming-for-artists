class Pulse {

  float scalePulse = random(10, 40);
  int x, y;
  float diam;
  
  Pulse(int pulseX, int pulseY){
    x = pulseX;
    y = pulseY;
    diam = 0;
  }
  
  void display(){
    fill(random(255), random(255), random(255), random(255));
    ellipse(x, y, sin(diam) * scalePulse + random(10), sin(diam) * scalePulse + random(10));
    diam += random(0.05);
  }
}
