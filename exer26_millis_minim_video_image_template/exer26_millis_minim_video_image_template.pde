import ddf.minim.*;
Minim minim;

import processing.video.*; // load video library (asterix loads all classes : i.e. Movie class & Capture class)
Movie myMovie1; // declare movie object from class Movie

PImage img1;

AudioPlayer track1;
AudioPlayer track2;
AudioPlayer track3;

int startTime;

void setup() {
  size(760, 588);
  background(255);
  //frameRate(20);
  imageMode(CENTER);

  img1 = loadImage("image1.jpg"); //bat: 760 × 588 px

  minim = new Minim(this); // initialize audio object

  track1 = minim.loadFile("bells-5-sec.mp3");
  //track2 = minim.loadFile("heart beat 4 sec.mp3");
  track2 = minim.loadFile("harpsicord.mp3"); 
  track3 = minim.loadFile("modem-4-sec.mp3");

  //"this" --> indicates the sketch you're working with; the particular movie file
  myMovie1 = new Movie(this, "Nora_trim.mp4"); // clip is 7 seconds
  //myMovie1 = new Movie(this, "Nora_trim.mov"); // .mov extension not working here
  //myMovie1.loop(); // access loop method in Movie class
  //myMovie1.play(); // we're going to put this in the void scene4() function below that controls video
  //myMovie1.volume(0); // a number from 0 to 1


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
    //scene2();  // rectangles
    scene5(); // bat image
  } 
  
  else if (m <= 11000) { // 11 secs // nora video 7 secs long // adjust millis accordingly
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

void scene1() { // circles
  ellipse(random(width), random(height), 100, 100);
  track1.play(); // play audio track
}

void scene2() { // rectangles
  rect(random(width), random(height), 100, 100);
  track2.play();
}

void scene3() { // lines
  float x = random(width);
  line(x, 0, x, height);
  track3.play();
}


void scene4() { // Nora the cat video
  //imageMode(CENTER);
  if (myMovie1.available()) { // Reads the current frame of the movie. 
    myMovie1.read(); // Need to include this for image to appear.
  }
  //myMovie1.loop();
  myMovie1.play();
  image(myMovie1, width/2, height/2);
  
  }
 
void scene5() { // bat image
  //imageMode(CORNER);
  image(img1, width/2, height/2);
  track2.play();
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
