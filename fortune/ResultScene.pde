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

  ResultScene() {
    int number = int(random(oracles.length));
    backgroundImage = loadImage(oracles[number]);
    rewindButtonBackgroundImage = loadImage("button.png");
  }

  void draw() {
    super.draw();
    image(rewindButtonBackgroundImage, 658, 417);
  }

  void mousePressed() {
    scene = new TellFortuneScene();
  }
}
