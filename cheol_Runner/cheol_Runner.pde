int RunnerSize = 20;
int obstecleX = 640;
float sunX = 500;
float sunY = 70;
float cloudX = 500;
float cloudY = 80;
int speed = -3;
float sunSpeed = -3;
float cloudSpeed = -5;

PImage cloudE;

void setup() {
  size (640, 400);
  cloudE = loadImage("cloudE.png");
}  

void draw() {
  background(225);
  stroke(0);
  fill(0, 0, 255);
  strokeWeight(2);

  // Runner
  rect(70, 350, RunnerSize, RunnerSize);

  // Ground
  line(obstecleX, 340, obstecleX, 372);

// Sun Set
  sunSet();

  //cloud
  cloudSet(0, 0);
  cloudSet(-150, 30);
  cloudSet(30, 77);

  line(0, 372, width, 372);
  obstecleX = obstecleX + speed;

  sunX = sunX + sunSpeed;
  cloudX = cloudX + cloudSpeed;
  
  if(sunX <= -50) {
    sunX = width+100;
  }
  
  if(cloudX <= -50) {
    cloudX = width+100;
  }
  


  println(cloudX, sunX);
}



void cloudSet(int X, int Y) {
  image (cloudE, cloudX+X, cloudY+Y, 75, 62);
  
}

void sunSet() {
  // Sun
  strokeWeight(5);
  stroke(#FC5D00);

  // Sun wings
  line(sunX, sunY-55, sunX, sunY+55);
  line(sunX-55, sunY-0, sunX+55, sunY-0);
  line(sunX-40, sunY-40, sunX+40, sunY+40);
  line(sunX+40, sunY-40, sunX-40, sunY+39);

  // Sun Body
  noStroke();
  fill(225);
  ellipse(sunX, sunY, 99, 90);
  fill(#FCD803);
  ellipse(sunX, sunY, 70, 70);
  stroke(0);
  strokeWeight(2);

  //Sun Face

  ellipse(sunX, sunY+0, 40, 40);
  fill(#FCD803);
  noStroke();
  ellipse(sunX, sunY+-5, 50, 40);
  stroke(0);
  fill(255);
  ellipse(sunX - 12, sunY-9, 15, 15);
  ellipse(sunX + 12, sunY-9, 15, 15);
  fill(0);
  ellipse(sunX - 12, sunY-9, 5, 5);
  ellipse(sunX + 12, sunY-9, 5, 5);
}