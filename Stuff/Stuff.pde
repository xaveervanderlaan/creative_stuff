int fillColor = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(100);
  noStroke();
  rectMode(CENTER);
  for (int x = 0; x < 255; x++) {
    fillColor = x;
  }
  println(fillColor);
  fill(0);  
  println(frameCount);
  push();


  translate(width/2, height/2);

    //rotate(radians(-frameCount));
    //rect(mouseX/2, 50, i*20, 1);
    for (int y = 0; y < mouseX; y++) {
      push();
      rotate(radians(-frameCount-y));

      rect(0+y, 0-y, y, 1);
      pop();
    }
    fill(255);
      for (int x = 0; x < mouseX; x++) {
      push();
      rotate(radians(frameCount-x));

      rect(0+x, 0-x, x, 1);
      pop();
    }
    fill(#FF7E7E);
          for (int x = 0; x < mouseX; x++) {
      push();
      rotate(radians(frameCount-mouseY));

      rect(0+x, 0-x, x, 1);
      pop();
    }
    pop();
  //rect(0,0, 300, 300);
  //pop();
  //push();
  //translate(width/2, height/2);
  //rotate(radians(frameCount));
  //fill(255);
  //rect(0, 0, 20, 400);
  //pop();
}
