class TellFortuneScene extends Scene {
  TellFortuneButton tellFortuneButton;

  TellFortuneScene() {
    backgroundImage = loadImage("tellFortune.png");
    tellFortuneButton = new TellFortuneButton();
  }

  void draw() {
    super.draw();
    tellFortuneButton.draw();
  }

  void mousePressed() {
    tellFortuneButton.mousePressed();
  }
}
