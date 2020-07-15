Scene scene;
ArrayList<Oracle> oracles;

void setup() {
  size(1024, 576);
  scene = new TellFortuneScene();

  oracles = new ArrayList<Oracle>();
  oracles.add(new Oracle("大吉", "絶好調です！",
   loadImage("daikichi.png")));
  oracles.add(new Oracle("吉", "いいことがあるみたいですよ！",
    loadImage("kichi.png")));
  oracles.add(new Oracle("中吉", "なかなかいい感じです！",
    loadImage("chukichi.png")));
  oracles.add(new Oracle("小吉", "ちょっといいことあるかもね！",
    loadImage("shoukichi.png")));
  oracles.add(new Oracle("末吉", "後でいいことがあるみたいです！",
    loadImage("suekichi.png")));
  oracles.add(new Oracle("凶", "そういうこともありますよね！",
    loadImage("kyou.png")));
  oracles.add(new Oracle("大凶", "慎重に行動しましょう！",
    loadImage("daikyou.png")));
}

void draw() {
  scene.draw();
}

void mousePressed() {
  scene.mousePressed();
}
