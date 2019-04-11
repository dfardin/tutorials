PImage img;

void setup() {
  img = loadImage("../ASSETS/image.jpg");
  size(800, 600, P2D);
}

void draw() {
  background(0);

  // SOURCE
  int sx = mouseX+150;
  int sy = mouseY+150;
  int sw = 150;
  int sh = 150;


  // DESTINATION
  int dx = width/2-125;
  int dy = height/2-125;
  int dw = 250;
  int dh = 250;

  copy(img, sx, sy, sw, sh, dx, dy, dw, dh);
  noFill();
  fill(#ffffff);
  noStroke();
  ellipse(mouseX, mouseY, 10, 10);

}
