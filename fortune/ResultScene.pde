class ResultScene extends Scene {
  String[] oracles = {
    "daikichi.png", 
    "kichi.png", 
    "chukichi.png", 
    "shoukichi.png", 
    "suekichi.png", 
    "kyou.png", 
    "daikyou.png"
  };
  PImage rewindButtonBackgroundImage;
  String rewindButtonText;
  PFont rewindButtonFont;

  ResultScene() {
    int number = int(random(oracles.length));
    backgroundImage = loadImage(oracles[number]);
    rewindButtonBackgroundImage = loadImage("button.png");
    rewindButtonText = "◀戻る";
    rewindButtonFont = createFont("MS Gothic", 48);
  }

  void draw() {
    super.draw();
    image(rewindButtonBackgroundImage, 658, 417);
    textFont(rewindButtonFont);
    fill(255);
    text(rewindButtonText, 658, 417);
  }

  void mousePressed() {
    scene = new TellFortuneScene();
  }
}
