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
    float buttonX = 457;
    float buttonY = 376;
    float buttonWidth = 501;
    float buttonHeight = 82;

    if (buttonX < mouseX && mouseX < buttonX + buttonWidth
      && buttonY < mouseY && mouseY < buttonY + buttonHeight) {
      scene = new ResultScene();
    }
  }
}
