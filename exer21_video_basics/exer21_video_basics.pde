  
import processing.video.*;
Movie myMovie; // make object myMovie from class Movie

void setup() {
  size(640, 480);
  myMovie = new Movie(this, "Nora_trim.mp4"); // this object in this sketch
  myMovie.loop();
  imageMode(CENTER);
  myMovie.volume(1); // 0 - 1
}

void draw() {
  tint(255, 20);
  image(myMovie, width/2, height/2);
  if(mousePressed) {
    myMovie.play();
  }
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}

void keyPressed(){
  if (key == 'p' || key == 'P') {
    myMovie.pause();
  }
}
