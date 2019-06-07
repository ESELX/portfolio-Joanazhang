// y = 5x 

// x = 5t
// y = 3t + 3

static final int NUM_LINES = 10;
float t;



void setup (){
  background(20);
  size(500,500);
}

void draw(){
  fill(0,10);
  rect(0,0,mouseX,mouseY);
  fill(random(255), random(255), random(255));
  noStroke();
  ellipse(random(width), random(height), 2,2);
  
  stroke(255);
  
  
  translate (width/2, height/2);
  
  for(int i = 0;i< NUM_LINES; i++){
  line(x1(t+i), y1(t+i), x2(t+i), y2(t+i));
}
  t+=0.5;
}

float x1(float t) {
  return sin(-t/10) *100 + sin(t/5) * 20;
}

float y1(float t) {
  return cos(t/10) *100 + sin(t/5) +50;
}

float x2(float t) {
  return sin(t/10) *100 + sin(t) * 2+ cos(t) * 10;
}

float y2(float t) {
  return -cos(t/20) *100 + cos(t/12) * 20;
}
