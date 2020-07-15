class Button {
  PImage backgroundImage;
  String text;
  PFont font;
  color textColor;
  float x;
  float y;

  Button() {
  }

  void draw() {
    image(backgroundImage, x, y);
    textFont(font);
    fill(textColor);
    text(text, x, y);
  }

  void mousePressed() {
  }

  boolean isTouched() {
    boolean result = false;
    if (x - backgroundImage.width / 2.0 < mouseX
      && mouseX < x + backgroundImage.width / 2.0
      && y - backgroundImage.height / 2.0 < mouseY
      && mouseY < y + backgroundImage.height / 2.0) {
      result = true;
    }
    return result;
  }
}
