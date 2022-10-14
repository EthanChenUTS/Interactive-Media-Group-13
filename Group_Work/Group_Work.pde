import peasy.*;
int buildingSize = 10;
int buildingLevel = 0;
PeasyCam cam;

void setup() {
  size(1000,800,P3D);
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(500);
  cam.setMaximumDistance(700);
  cam.setYawRotationMode();
}
void draw() {
  rotateX(radians(0));
  rotateY(radians(0));
  background(255);
  
  
  // Building main body;
  fill(237,224,179);
  box(40 * buildingSize, buildingSize, 20 * buildingSize);
  
  pushMatrix();
  for (buildingLevel = 0; buildingLevel < 7; buildingLevel++) {
  translate(0, buildingSize,0);
  fill(237,224,179);
  box(40 * buildingSize, buildingSize, 20 * buildingSize);
  }
  popMatrix();
  
  pushMatrix();
  for (buildingLevel = 0; buildingLevel < 7; buildingLevel++) {
  translate(0, -1 * buildingSize,0);
  fill(237,224,179);
  box(40 * buildingSize, buildingSize, 20 * buildingSize);
  }
  popMatrix();
  
  // back cover
  pushMatrix();
  translate(0, -2 * buildingSize,0);
  color c = color (21, 37, 17, 150);
  fill(c);
  beginShape();
  vertex(-210,-80,-100);//left-top point
  vertex(-200,100,-110);//left-bottom point
  vertex(200,100,-110);//right-bottom point
  vertex(200,-100,-100);//right-top point
  endShape(CLOSE);
  popMatrix();
  
  // front cover
  pushMatrix();
  translate(0, -2 * buildingSize,0);
  beginShape();
  vertex(-200,-70,100);//left-top point
  vertex(-190,100,110);//left-bottom point
  vertex(80,100,110);//bottom middle point
  vertex(190,75,110);//right-bottom point
  vertex(210,-100,100);//right-top point
  endShape(CLOSE);
  popMatrix();
  
  // left cover
  pushMatrix();
  translate(0, -2 * buildingSize,0);
  beginShape();
  vertex(-200,-90,110);// left view right-top
  vertex(-200,-80,-100);// left view left-top
  vertex(-210,100,-100);// left view left-bottom
  vertex(-210,100,10);// left view bottom middle
  vertex(-210,75,100);// left view right-bottom
  endShape(CLOSE);
  popMatrix();
  
  // right cover
  pushMatrix();
  translate(0, -2 * buildingSize,0);
  beginShape();
  vertex(200,-90,100);// right view left-top
  vertex(200,-100,-100);// right view right-top
  vertex(210,75,-100);// right view right-bottom
  vertex(210,100,-10);// right view bottom middle
  vertex(210,100,90);// right view left-bottom
  endShape(CLOSE);
  popMatrix();
  
  //building Bottom
  pushMatrix();
  fill(200);
  translate(0, 8 * buildingSize,0);
  box(50 * buildingSize, 0.1 * buildingSize, 30 * buildingSize);
  popMatrix();
  
  // UTS LOGOs
  // Front Logo
  pushMatrix();
  fill(225);
  textSize(30);
  text("UTS",130, -80, 105);
  popMatrix();
  // Left logo
  pushMatrix();
  fill(225);
  textSize(30);
  rotateY(radians(-90));
  text("UTS",40, -80, 203);
  popMatrix();
}
