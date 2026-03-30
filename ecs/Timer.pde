// Weston Day | 25 Mar 2026 | Timer
import processing.sound.*;
SoundFile alarm;
Button btnStart, btnStop, btnReset;
int totalTime, startTime, timeLeft;
boolean running;

void setup() {
  size(500, 500);
  alarm = new SoundFile(this, "alarm.wav");
  btnStart = new Button(100, 100, 100, 30, "Start");
  btnStop = new Button(250, 100, 100, 30, "Stop");
  btnReset = new Button(400, 100, 100, 30, "Reset");
  totalTime = 10;
  startTime = 0;
  running = false;
}

void draw() {
  background(#31C0F2);

  if (running == true) {
    int elapsed = (millis() - startTime)/1000;
    timeLeft = totalTime - elapsed;

    if (timeLeft <= 0) {
      timeLeft = 0;
      running = false;
      alarm.play(0);
    }
  }
  btnStart.display();
  btnStop.display();
  btnReset.display();
  fill(#EA85E6);
  rectMode(CENTER);
  rect(width/2, height/2+40, width-50, 200, 10);
  textSize(100);
  textAlign(CENTER, CENTER);
  fill(127);
  text(timeLeft, width/2, height/2);
}

void mousePressed() {
  if(btnStart.isMouseOver() == true) {
    running = true;
    startTime = millis();
  }
  
  if(btnStop.isMouseOver() == true) {
    running = false;
    //timeLeft = 0;
  }
  
  if(btnReset.isMouseOver() ==true) {
    running = false;
    timeLeft=10; 
  }
}
