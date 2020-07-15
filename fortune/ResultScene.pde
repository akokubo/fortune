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
  RewindButton rewindButton;

  ResultScene() {
    int number = int(random(oracles.length));
    backgroundImage = loadImage(oracles[number]);
    rewindButton = new RewindButton();
  }

  void draw() {
    super.draw();
    rewindButton.draw();
  }

  void mousePressed() {
    rewindButton.mousePressed();
  }
}
