class RewindButton extends Button {
  RewindButton() {
    backgroundImage = loadImage("button.png");
    text = "◀戻る";
    font = createFont("MS Gothic", 48);
    textColor = color(255); 
    x = 658; 
    y = 417;
  }

  void mousePressed() {
    if (isTouched() == true) {
      scene = new TellFortuneScene();
    }
  }
}
