PImage img;

void setup(){
  size(236, 338); // must be same size as image or you get Array out of bounds error
  img = loadImage("QueenOfClubs2.jpg");
}

void draw(){
  loadPixels();
  img.loadPixels();
  for(int y = 0; y < height; y++){
    for(int x = 0; x < width; x++){
      int loc = x + y * width;
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      pixels[loc] = color(r, g, b);
      if(r > 150 && g > 100 && b > 25) {
        pixels[loc] = color(#CB0085);
      }
    }
  }
  updatePixels();
}
