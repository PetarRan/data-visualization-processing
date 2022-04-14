void setup() {
  size(720, 640);
}

void draw() {
  if (mouseX < 255) {
    fill(mouseX);
  } else {
    fill(mouseX % 255);
  }
  ellipse(mouseX, mouseY, 180, 180);
}
