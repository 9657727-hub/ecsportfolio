class Button {
  // Member Variables
  int x, y, w, h;
  String label;

  // Constructor
  Button(int x, int y, int w, int h, String label) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
  }

  void display() {
    if (isMouseOver()) {
      fill(#EA85E6);
    } else {
      fill(50);
    }
    rectMode(CENTER);
    rect(x, y, w, h);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    text(label, x, y);
  }

  boolean isMouseOver() {
    return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
  }

  boolean wasClicked() {
    return true;
  }
}
