import processing.pdf.*;

PImage venice;
String[] lines;

void setup() {
  size(720, 640);
  stroke(255, 255, 255, 128);
  background(192, 64, 0);
  lines = loadStrings("something.txt");
  println(lines[0]);
  venice = loadImage("venice.jpg");
}

void draw() {

  if (mousePressed && (mouseButton == LEFT)) {
    beginRecord(PDF, "lines.pdf");
    background(34, 128, 0);
    image(venice, 0, 0, 200, 200);
  }
  if (mousePressed && (mouseButton == RIGHT)) {
    saveFrame("test.png");
    endRecord();
    background(192, 64, 0);
  }

  line(mouseX, mouseY, 70, 90);
}
