Ball[] balls = new Ball[4];

void setup(){
  size(500,300);
  balls[0] = new Ball(1,1);
  balls[1] = new Ball(width-1,1);
  balls[2] = new Ball(1,height-1);
  balls[3] = new Ball(width-1,height-1);
}

void draw(){
  background(200);
  for (int i = 0; i < balls.length;i++){
    balls[i].update(); //<>//
  }
}
