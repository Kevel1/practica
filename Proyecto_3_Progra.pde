int currentScene = 1;

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  
  if (currentScene == 1) {
    drawBeachScene();
  } else if (currentScene == 2) {
    drawScene2();
  }
}

void drawBeachScene() {
  background(135, 206, 250); // Cielo azul claro
  drawSun(100, 100);
  drawSea();
  drawBeach(color(238, 221, 130));
  drawPalmTree(600, 400);
  drawPalmTree(700, 400);
  drawHouse(200, 340, color(230, 190, 138), color(174, 141, 100));
}

void drawSun(float x, float y) {
  fill(255, 255, 0);
  ellipse(x, y, 120, 120);
}

void drawSea() {
  fill(0, 119, 190); // Color azul oscuro para el mar
  rect(0, height / 2, width, height / 2);
}

void drawBeach(color sandColor) {
  fill(sandColor);
  noStroke();
  beginShape();
  vertex(0, height / 2);
  vertex(0, height);
  vertex(width, height);
  vertex(width, height / 2);
  vertex(width / 2 + 150, height / 2);
  endShape(CLOSE);
}

void drawPalmTree(float x, float y) {
  fill(139, 69, 19);
  rect(x - 10, y - 200, 20, 200);
  fill(34, 139, 34);
  triangle(x - 40, y - 220, x, y - 320, x + 40, y - 220);
  fill(34, 139, 34);
  ellipse(x, y - 220, 120, 120);
}

void drawHouse(float x, float y, color wallColor, color roofColor) {
  fill(wallColor);
  rect(x - 120, y - 180, 240, 180); // Casa
  fill(roofColor);
  triangle(x - 130, y - 180, x + 130, y - 180, x, y - 260); // Techo
  fill(150, 75, 0);
  rect(x - 20, y - 40, 40, 40); // Puerta
}

void drawScene2() {
  background(255, 223, 186); // Cielo amarillo suave
  drawSun(700, 100);
  drawHills(color(154, 205, 50), color(34, 139, 34));
  drawTrees(100, 500, color(139, 69, 19), color(0, 100, 0));
  drawTrees(200, 500, color(139, 69, 19), color(0, 100, 0));
  drawTrees(300, 500, color(139, 69, 19), color(0, 100, 0));
  drawTrees(400, 500, color(139, 69, 19), color(0, 100, 0));
  drawTrees(500, 500, color(139, 69, 19), color(0, 100, 0));
}

void drawHills(color c1, color c2) {
  for (int i = 0; i < width; i += 20) {
    fill(c1);
    ellipse(i, height - 50, 80, 80);
    fill(c2);
    ellipse(i + 10, height - 70, 80, 80);
  }
}

void drawTrees(float x, float y, color c1, color c2) {
  fill(c1);
  rect(x, y - 100, 20, 100);
  fill(c2);
  ellipse(x + 10, y - 120, 120, 120);
}

void keyPressed() {
  if (key == '1') {
    currentScene = 1;
  } else if (key == '2') {
    currentScene = 2;
  }
  redraw();
}
