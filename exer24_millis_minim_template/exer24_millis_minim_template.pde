import ddf.minim.*;
Minim minim;

AudioPlayer track1;
AudioPlayer track2;
AudioPlayer track3;

int startTime;

void setup() {
  size(760, 588);
  background(255);
  frameRate(20);

  minim = new Minim(this); // initialize audio object
  
  track1 = minim.loadFile("bells-5-sec.mp3");
  //track2 = minim.loadFile("heart beat 4 sec.mp3");
  track2 = minim.loadFile("harpsicord.mp3"); 
  track3 = minim.loadFile("modem-4-sec.mp3");
  
  startTime = millis(); // use millis
}

void draw() {
  background(255);
  int m = millis() - startTime; // calculate passage of time
  
  background(255);

  if (m < 2000) { // 2 secs
    scene1();
    track1.play();
  } 
  
  else if (m < 5000) { // 5 secs
    scene2();
    track2.play();
  } 
  
  else if (m < 10000) { // 10 secs
    scene3();
    track3.play();
  } 
  
  else if (m >= 10000) {
    startTime = millis(); // reset millis
    
    track1.rewind(); // reset audio tracks to beginning of clips
    track2.rewind();
    track3.rewind();
    
  }
  println(millis());
}


///////////////////////// functions ////////////////////

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
  
  
void stop() {
  // finishes file
  track1.close();
  track2.close();
  track3.close();
  // stops track playing
  minim.stop();

  super.stop();
  }

/////////////////////// functions end //////////////////
