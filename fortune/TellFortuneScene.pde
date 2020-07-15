class TellFortuneScene extends Scene {
  TellFortuneScene() {
    backgroundImage = loadImage("tellFortune.png");
  }

  void draw() {
    super.draw();
  }

  void mousePressed() {
    scene = new ResultScene();
  }
}
