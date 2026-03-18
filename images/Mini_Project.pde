PImage bg;
int x, y, score;

void setup() {
  size(400,300);
  bg = loadImage("Space.jpg");
  newTarget();
}

void draw() {
  image(bg,0,0,width,height);

  fill(0,100,255);
  ellipse(x,y,40,40);

  fill(255);
  text("Score: "+score,10,20);
}

void mousePressed() {
  if (dist(mouseX,mouseY,x,y) < 20) {
    score++;
    newTarget();
  }
}

void newTarget() {
  x = int(random(40,width-40));
  y = int(random(40,height-40));
}
