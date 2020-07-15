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
    Oracle oracle = new Oracle(tableRow);
    oracles.add(oracle);
  }
}
