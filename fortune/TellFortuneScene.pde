class TellFortuneScene extends Scene {
  PImage backgroundImage;

  TellFortuneScene() {
    backgroundImage = loadImage("tellFortune.png");
  }

  void draw() {
    image(backgroundImage, 0, 0);
  }

  void mousePressed() {
    // クリックされたら「結果」シーン
    scene = new ResultScene();
  }
}
