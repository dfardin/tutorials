PFont sansBlack;
PGraphics pg;

void setup() {
  sansBlack = createFont("../ASSETS/RobotoMono-Regular.ttf", 600);
  size(800, 800, P2D);
  pg = createGraphics(800, 800, P2D);
}

void draw() {
  background(0);

  pg.beginDraw();
  pg.background(0);
  pg.fill(255);
  pg.textFont(sansBlack);
  pg.textSize(800);
  pg.pushMatrix();
  pg.translate(width/2, height/2-215);
  pg.textAlign(CENTER, CENTER);
  pg.text("a", 0, 0);
  pg.popMatrix();
  pg.endDraw();

   image(pg, 0, 0);
   
   
        // SOURCE
      int sx = mouseX;
      int sy = mouseY;
      int sw = 70;
      int sh = 70;


      // DESTINATION
      int dx = mouseX;
      int dy = mouseY;
      int dw = 200;
      int dh = 200;
      
      
  copy(pg, sx, sy, sw, sh, dx, dy, dw, dh);

}
