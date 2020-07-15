Scene scene;

void setup() {
  size(1024, 576);
  // 最初のシーンは「占う」シーン
  scene = new TellFortuneScene();
}

void draw() {
  // 現在のシーンを描画
  scene.draw();
}

void mousePressed() {
  // 現在のシーンのマウスクリック処理
  scene.mousePressed();
}
