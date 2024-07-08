DirectionWalker bob;

void setup(){
  size(400,400);
  bob = new DirectionWalker(width/2,height/2 , "walker" , ".gif");
  
}

void draw(){
  background(200);
  frameRate(60);
  bob.SetSpeed(0,0); //<>//
  bob.Render();
}
