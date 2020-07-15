PImage backgroundImage;

void setup() {
  size(1024, 576);
  backgroundImage = loadImage("tellFortune.png");
}

void draw() {
  image(backgroundImage, 0, 0);
}
