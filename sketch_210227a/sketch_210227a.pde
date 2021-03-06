void setup(){
  size(600,600);
}

void draw(){
  background(#111111);
  noStroke();
  fill(#f1f1f1);
  
  triangle(50, 300, 50, 50, 150, 175);
  triangle(250, 300, 250, 50, 150, 175);
  
  rectMode(CENTER);
  rect(300,175,50,250);
  
  triangle(325,300,420,200,500,300);
  
  noFill();
  stroke(255);

  ellipse(300, 450, 200,200);
  
  println(mouseX + " " + mouseY);
}
