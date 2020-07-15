class ResultScene extends Scene {
  RewindButton rewindButton;
  Oracle oracle;
  PFont nameFont;
  PFont descriptionFont;

  ResultScene() {
    backgroundImage = loadImage("result.png");
    int number = int(random(oracles.size()));
    oracle = oracles.get(number);
    rewindButton = new RewindButton();
    nameFont = createFont("MS Gothic", 60);
    descriptionFont = createFont("MS Gothic", 28);
  }

  void draw() {
    super.draw();

    textAlign(LEFT, TOP);
    fill(0);
    textFont(nameFont);
    text("あなたの運勢は" + oracle.name + "です！", 457, 106, 440, 153);

    textFont(descriptionFont);
    text(oracle.description, 446, 276);

    image(oracle.image, 213, 289);

    rewindButton.draw();
  }

  void mousePressed() {
    rewindButton.mousePressed();
  }
}
