// Weston Day | 4 Mar 2026 | ShapeGame
int x, y, tx, ty, score;
float tw;
PImage player, target, background;

void setup() {
  size(800, 800);
  x = width/2;
  y = height/2;
  tx = int(random(20, width-20));
  ty = int(random(20, height-20));
  tw = 200;
  score = 0;
  player = loadImage("Player.png");
  target = loadImage("Object.png");
  background = loadImage("Pacman.png");
  background.resize(width, height);
}

void draw() {
  image(background, width/2, height/2);
  scorePanel();
  target();
  imageMode(CENTER);
  image(player, x, y);
  //ellipse(x, y, 20, 20);
}

void target() {
  float d = dist(x, y, tx, ty);
  println(d);
  println(score);
  image(target,tx,ty,tw,tw);
  rectMode(CENTER);
  rect(tx, ty, 50, 50);
  if (d<50) {
    score = score + int(tw * 2);
    tx = int(random(20, width-20));
    ty = int(random(20, height-20));
    tw = 200;
  }
  rectMode(CENTER);
  //rect(tx,ty,tw,tw);
  if (tw<10) {
    gameOver();
  }
  image(target, tx, ty);
  tw = tw - 0.1;
  target.resize(int(tw), (int)tw);
}

void gameOver() {
  background(0);
  fill(255, 0, 0);
  textSize(60);
  text("Gamer Over!", width/2, height/2);
  noLoop();
}

void scorePanel() {
  rectMode(CENTER);
  fill(127, 127);
  rect(width/2, 15, width, 30);
  fill(0);
  textSize(30);
  text("Score:" + score, 20, 25);
}

void keyPressed() {
  if (x > width) {
    x = 0;
  }

  if (x < 0) {
  }
  //WASD and Arrow Movement
  if (key == 'w' || key == 'W' || keyCode == UP) {
    y = y - 50;
  } else if (key == 's' || key == 'S' || keyCode == DOWN) {
    y = y + 50;
  } else if (key == 'a' || key == 'A' || keyCode == LEFT) {
    x = x - 50;
  } else if (key == 'd' || key == 'D' || keyCode == RIGHT) {
    x = x + 50;
  }
}
