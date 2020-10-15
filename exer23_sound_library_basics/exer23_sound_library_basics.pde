import processing.sound.*;

SoundFile file; // make object file
SoundFile file2;
SoundFile file3;

void setup() {
  size(300, 300);
  file = new SoundFile(this, "spooky organ.mp3");
  file2 = new SoundFile(this, "count soft.mp3");
  file3 = new SoundFile(this, "2 ways to count.mp3");
  //file.play();
  //file.loop();
  //file.amp(0.5); // 0 - 1

}

void draw() {


}

void keyPressed() {
  switch(key){
    case '1':
      file.play();
      file2.stop();
      file3.stop();
      break;
    case '2':
      file2.play();
      file.stop();
      file3.stop();
      break;
    case '3':
      file3.play();
      file.stop();
      file2.stop();
      break;
  }

}
