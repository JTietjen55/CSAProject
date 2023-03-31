Sprite s;

void setup() {
  size(800, 600);
  s = new Sprite(width/2, height/2, 50, 50);
}

void draw() {
    //ellipse(mouseX, mouseY, 50, 50);
    s.update();
    s.display();
}
