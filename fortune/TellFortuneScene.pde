class TellFortuneScene extends Scene {
  PImage tellFortuneButtonBackgroundImage;

  TellFortuneScene() {
    backgroundImage = loadImage("tellFortune.png");
    tellFortuneButtonBackgroundImage = loadImage("button.png");
  }

  void draw() {
    super.draw();
    image(tellFortuneButtonBackgroundImage, 658, 417);
  }

  void mousePressed() {
    scene = new ResultScene();
  }
}
