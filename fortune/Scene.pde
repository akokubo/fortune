class Scene {
  PImage backgroundImage;

  Scene() {
  }

  void draw() {
    imageMode(CENTER);
    textAlign(CENTER, CENTER);
    image(backgroundImage, width / 2.0, height / 2.0);
  }
 void mousePressed() {
  }
}
