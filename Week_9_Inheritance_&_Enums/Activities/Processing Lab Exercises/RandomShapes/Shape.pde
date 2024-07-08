public abstract class Shape{
  protected float x, y; // position
  protected float size; // radius
  protected color colour; // Processing colour representation
  protected float xt, yt; // target point - used by move method
  
  Shape(float x, float y, float size, color colour){
    this.x = x;
    this.y = y;
    this.size = size;
    this.colour = colour;
    xt = x;
    yt = y;
  }
  
  public void update() {
    move();
    render();
  }
  
  public abstract void render();
  
  void move() {
    // is the centre close to the target?
    if ( (x-xt)*(x-xt) + (y-yt)*(y-yt) < 1 ) { //<>//
      // choose a new target
      xt = x + random( -50, 50 ); //<>//
      yt = y + random( -50, 50 );
    }
    // move towards target
    x = xt * 0.05 + x * 0.95;
    y = yt * 0.05 + y * 0.95;
  }
  
}
