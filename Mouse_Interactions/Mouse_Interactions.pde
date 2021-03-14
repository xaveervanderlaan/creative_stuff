int eSize;
int stroke = 20;
int textSize = 1;
String s = "Xaverius avenue!";
color primary = #B94C69;
color secondary = #E91E63;


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

  if (random(1) > 0.5) {
    background(primary); 
    fill(secondary);
  } else {
    background(secondary);
    noFill();

  }
  if (mousePressed) {
    background(255);
  }
  triangle(mouseX, mouseY+65, mouseX, mouseY + 50, mouseX + 15, mouseY + 70);
  if (keyPressed) {
    if (textSize > 1) {
      s = "Xaverius avenue!";
      if (keyCode == UP) {
        textSize += 1;
      } 

      if (keyCode == DOWN) {
        textSize -= 1;
      }
    } else {

      textSize = 2;
      s = "size is too small";
    }
    ellipse(mouseX, mouseY, 25, 25);
  }
  if (random(1) > 0.5) {

    stroke(primary);
  } else {
 
    stroke(secondary);
  }

  stroke(255);
  strokeWeight(random(5,20));
  noFill();
  if (mousePressed) {
    stroke(primary);
  }

  ellipse(250, 250, eSize, eSize);

  if (mousePressed) {
    strokeWeight(300);
    stroke = stroke + 20;

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

  fill(0);
  textSize(textSize);
  textAlign(CENTER);
  text(s, mouseX, mouseY, 80);  // Text wraps within text box
}
void mouseReleased() {

  stroke = 0;
}
