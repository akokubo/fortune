PImage backgroundImage;
PImage tellFortuneBackgroundImage;
// 託宣の一覧
String[] oracles = {
  "daikichi.png", 
  "kichi.png", 
  "chukichi.png", 
  "shoukichi.png", 
  "suekichi.png", 
  "kyou.png", 
  "daikyou.png"
};

void setup() {
  size(1024, 576);
  tellFortuneBackgroundImage = loadImage("tellFortune.png");
  backgroundImage = tellFortuneBackgroundImage;
}

void draw() {
  image(backgroundImage, 0, 0);
}

void mousePressed() {
  if (backgroundImage == tellFortuneBackgroundImage) {
    int number = int(random(oracles.length));
    backgroundImage = loadImage(oracles[number]);
  } else {
    backgroundImage = tellFortuneBackgroundImage;
  }
}
