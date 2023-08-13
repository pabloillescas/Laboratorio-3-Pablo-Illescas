int circleSize = 30;
color circleColor = color(0, 0, 0);
float drawingSpeed = 5.0;

void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  if (mousePressed) {
    fill(circleColor);
    ellipse(mouseX, mouseY, circleSize, circleSize);
  }
}

void keyPressed() {
  if (key == 'q' || key == 'Q') {
    circleColor = color(255, 0, 0);
  } else if (key == 'w' || key == 'W') {
    circleColor = color(0, 255, 0);
  } else if (key == 'e' || key == 'E') {
    circleColor = color(0, 0, 255);
  } else if (key == '+' || key == '=') {
    circleSize += 10;
  } else if (key == 'r' || key == 'R') {
    background(255);
  } else if (key == '-' || key == '_') {
    if (circleSize > 10) {
      circleSize -= 10;
    }
  }
}
