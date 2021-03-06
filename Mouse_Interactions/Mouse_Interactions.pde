int eSize;
int stroke = 20;

void setup() {
  size(500, 500);
  noCursor();
  ellipseMode(CENTER);
}

void draw() {
  int mX = mouseX;
  int mY = mouseY;
  background(0);
  noStroke();
  fill(255);
  if (mousePressed) {
    background(255);
    fill(0);
  }
  triangle(mouseX, mouseY+65, mouseX, mouseY + 50, mouseX + 15, mouseY + 70);


  stroke(255);
  strokeWeight(20);
  noFill();
  if (mousePressed) {
    stroke(0);
  }

  ellipse(250, 250, eSize, eSize);

  if (mousePressed) {
    strokeWeight(stroke);
    stroke = stroke + 5;
    noFill();
    ellipse(mouseX, mouseY, 25, 25); 
    if (stroke > 500) {
      stroke = 0;
    }
  } 

  println(eSize);

  if (eSize <= 500) {
    eSize++;
  } else {
    println("MAX!");
    eSize = 0;
  }
  String s = "KEVIN IS EEN BOT";
fill(0);
textSize(50);
textAlign(CENTER);
text(s, 0, width/2, 500, 80);  // Text wraps within text box
}
void mouseReleased() {

  stroke = 0;
}
