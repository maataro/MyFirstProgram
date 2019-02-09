// This is a comment
float originX;
float originY;

float eyeR;
float eyeG;
float eyeB;

void setup() {
  size(200, 200);  // window size
  frameRate(30);
  
  originX = width/2;
  originY = height;
}

void draw() {
  background(255);  // white background

  // CENTER mode for drawing ellipse and rectangle 
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  translate(originX, originY);
  
  
  // Drawing Zoog
  noStroke();
  fill(150);
  
  // Neck
  rect(0, 0, 10, 20);
  
  // Body
  fill(150);
  triangle(-50, 10, 50, 10, 0, 100);
  
  // right arm
  rect(-40, 50, 10, 60);
  ellipse(-40, 80, 20, 20);
  // left arm
  rect(40, 50, 10, 60);
  ellipse(40, 80, 20, 20);
  
  // right foot
  rect(-10, 90, 10, 40);
  ellipse(-10, 115, 20, 20);
  // left foot
  rect(10, 90, 10, 40);
  ellipse(10, 115, 20, 20);
  
  // Face
  arc(0, -30, 60, 60, PI-QUARTER_PI, TWO_PI + QUARTER_PI, CHORD);
  
  fill(0);
  ellipse(0, -35, 3, 3);
  ellipse(0, -25, 3, 3);  
  
  // Eyes
  eyeR = random(255);
  eyeG = random(255);
  eyeB = random(255);
  
  fill(eyeR, eyeG, eyeB);
  ellipse(-15, -30, 10, 10);
  ellipse(15, -35, 14, 14);
  
  originX = originX + random(-5, 5);
  originY = originY - 1;
}
