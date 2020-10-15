import processing.sound.*;

SoundFile file; // make object file

void setup() {
  size(300, 300);
  file = new SoundFile(this, "spooky organ.mp3");
  // file.play()
  file.loop();
  file.amp(0.5); // 0 - 1

}
