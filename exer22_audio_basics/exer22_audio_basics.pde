import ddf.minim.*;

Minim minim;  // object minim from class Minim

AudioPlayer track;

void setup() {
  minim = new Minim(this); // object to use in this sketch
  track = minim.loadFile("dial-up-modem-01.mp3");
  //track.play();
  track.loop();
}

void draw(){
  if(track.isPlaying()) {
    track.pause();
  } else {
    track.loop();
  }
}

void stop() {
  // finishes the file
  track.close();
  // stops track playing
  minim.stop();
  super.stop();
}
