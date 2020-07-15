class ResultScene extends Scene {
  PImage backgroundImage;
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
    // ランダムな結果を選ぶ
    int number = int(random(oracles.length));
    backgroundImage = loadImage(oracles[number]);
  }

  void draw() {
    image(backgroundImage, 0, 0);
  }

  void mousePressed() {
    // クリックされたら「占う」シーンへ
    scene = new TellFortuneScene();
  }
}
