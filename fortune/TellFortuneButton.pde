class TellFortuneButton extends Button {
  TellFortuneButton() {
    backgroundImage = loadImage("button.png");
    text = "占う！";
    font = createFont("MS Gothic", 48);
    textColor = color(255); 
    x = 658; 
    y = 417;
  }

  void mousePressed() {
    if (isTouched() == true) {
      scene = new ResultScene();
    }
  }
}
