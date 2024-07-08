class Ball
{
  int x,y;
  int speedX=2, speedY=2;
  
  Ball(int x, int y)
  {
    this.x = x;
    this.y = y;
  }
  
  void render()
  {
    ellipse(x,y,10,10); 
  }
  
  void move()
  {
    this.x = this.x+this.speedX;
    this.y = this.y+this.speedY;
    if (this.x<0 || this.x>width)
    { this.speedX=-this.speedX;}
    if (this.y<0 || this.y>height)
    { this.speedY=-this.speedY;}
  }
  
  void update()
  {
    this.move();
    this.render();
  }
}
