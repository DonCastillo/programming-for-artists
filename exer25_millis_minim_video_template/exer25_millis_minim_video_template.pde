import ddf.minim.*;
Minim minim;

import processing.video.*; // load video library (asterix loads all classes : i.e. Movie class & Capture class)
Movie myMovie1; // declare movie object from class Movie
//Movie myMovie2;

AudioPlayer track1;
AudioPlayer track2;
AudioPlayer track3;

int startTime;

void setup() {
  size(760, 588);
  background(255);
  //frameRate(20);

  minim = new Minim(this); // initialize audio object

  track1 = minim.loadFile("bells-5-sec.mp3");
  //track2 = minim.loadFile("heart beat 4 sec.mp3");
  track2 = minim.loadFile("harpsicord.mp3"); 
  track3 = minim.loadFile("modem-4-sec.mp3");

  //myMovie1 = new Movie(this, "rose.mov"); //"this" --> indicates the sketch you're working with; the particular movie file
  
   myMovie1 = new Movie(this, "Nora_trim.mp4"); // clip is 7 seconds
   //myMovie1 = new Movie(this, "Nora_trim.mov");
  //myMovie1.loop(); // access loop method in Movie class
  //myMovie1.play();
  //myMovie1.volume(0); // a number from 0 to 1
  
  //myMovie2 = new Movie(this, "Nora_trim.mp4");
  //myMovie2.play();

  startTime = millis(); // use millis
}

void draw() {
  background(255);
  int m = millis() - startTime; // calculate passage of time

  background(255);

  if (m <= 2000) { // 2 secs
    scene1(); // circles
  } 
  
  else if (m <= 5000) { // 5 secs
    scene2();  // rectangles
  } 
  
  else if (m <= 11000) { // 10 secs // video 7 secs // adjust millis accordingly
    //scene3(); // lines
    scene4(); // video
  } 
  
  else if (m >= 11000) {
    startTime = millis(); // reset millis

    track1.rewind(); // reset audio tracks to beginning of clips
    track2.rewind();
    track3.rewind();
  
    myMovie1.jump(0); // reset the video to beginning of clip
    myMovie1.pause(); // don't play until we ask it to in void scene4() function

  }
  println(millis());
}


///////////////////////// functions ////////////////////

void scene1() {
  //background(255);
  ellipse(random(width), random(height), 100, 100);
  track1.play();
}

void scene2() {
  //background(255);
  rect(random(width), random(height), 100, 100);
  track2.play();
}

void scene3() {
  //background(255);
  float x = random(width);
  line(x, 0, x, height);
  track3.play();
}


void scene4() {
  imageMode(CENTER);
  if(myMovie1.available()){ // Reads the current frame of the movie. 
   myMovie1.read(); // Need to include this for image to appear.
  }
  //myMovie1.loop();
  myMovie1.play();
  image(myMovie1, width/2, height/2);
}

//  void movieEvent(Movie m) { // Reads the current frame of the movie. Need to include this for image to appear.
//  m.read();
//}

//void movieEvent(Movie m) {
//  if (m == myMovie1) {
//    myMovie1.read();
//  } 
//}

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
