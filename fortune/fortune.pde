Scene scene;
ArrayList<Oracle> oracles;

void setup() {
  size(1024, 576);
  scene = new TellFortuneScene();

  loadOracles();
}

void draw() {
  scene.draw();
}

void mousePressed() {
  scene.mousePressed();
}

void loadOracles() {
  oracles = new ArrayList<Oracle>();

  Table table;
  table = loadTable("oracles.csv", "header");
  for (TableRow tableRow : table.rows()) {
    String name = tableRow.getString("名称");
    String description = tableRow.getString("説明");
    String imageFile = tableRow.getString("画像ファイル");
    PImage image = loadImage(imageFile);
    Oracle oracle = new Oracle(name, description, image);
    oracles.add(oracle);
  }
}
