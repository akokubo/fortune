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

  ResultScene() {
    int number = int(random(oracles.length));
    backgroundImage = loadImage(oracles[number]);
  }

  void draw() {
    super.draw();
  }

  void mousePressed() {
    scene = new TellFortuneScene();
  }
}
