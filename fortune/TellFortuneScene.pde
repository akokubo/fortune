class TellFortuneScene extends Scene {
  PImage tellFortuneButtonBackgroundImage;
  String tellFortuneButtonText;
  PFont tellFortuneButtonFont;

  TellFortuneScene() {
    backgroundImage = loadImage("tellFortune.png");
    tellFortuneButtonBackgroundImage = loadImage("button.png");
    tellFortuneButtonText = "占う！";
    tellFortuneButtonFont = createFont("MS Gothic", 48);
  }

  void draw() {
    super.draw();
    image(tellFortuneButtonBackgroundImage, 658, 417);
    textFont(tellFortuneButtonFont);
    fill(255);
    text(tellFortuneButtonText, 658, 417);
  }

  void mousePressed() {
    scene = new ResultScene();
  }
}
