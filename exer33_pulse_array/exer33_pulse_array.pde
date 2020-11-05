int maxPulses = 50000;
int numPulses = 0;

Pulse[] pulses = new Pulse[maxPulses];

void setup(){
  size(600, 600);
  noStroke();
}

void draw(){
  background(0);
  for(int i = 0; i < numPulses; ++i){
    pulses[i].display();
  }
}

void mousePressed(){
  addPulse(mouseX, mouseY);
}

void mouseDragged(){
  addPulse(mouseX, mouseY);
}

void keyPressed(){
  if(key == 32){
    numPulses = 0;
  }
}

void addPulse(int newX, int newY){
  if(numPulses < maxPulses){
    pulses[numPulses] = new Pulse(newX, newY);
    numPulses++;
  }
}
