//PImage img1;
//int x=50,y=50;
//img1 = loadImage("walk1.gif"); //loads from .pde source code directory
//image(img1,x,y);

Walker bob;

void setup(){
  size(400,400);
  bob = new Walker(width/2,height/2);
}

void draw(){
  frameRate(4);
  bob.DrawWalkerFrame();
  
}
