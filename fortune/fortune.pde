PImage backgroundImage;
// 「占う」シーン
PImage tellFortuneBackgroundImage;
// 「結果」シーン
PImage chukichiBackgroundImage;

void setup() {
  size(1024, 576);
  // それぞれのシーンの画像を読み込む
  tellFortuneBackgroundImage = loadImage("tellFortune.png");
  chukichiBackgroundImage = loadImage("chukichi.png");

  // 最初は「占う」シーン
  backgroundImage = tellFortuneBackgroundImage;
}

void draw() {
  image(backgroundImage, 0, 0);
}

void mousePressed() {
  // 画像を切り替える
  if (backgroundImage == tellFortuneBackgroundImage) {
    backgroundImage = chukichiBackgroundImage;
  } else {
    backgroundImage = tellFortuneBackgroundImage;
  }
}
