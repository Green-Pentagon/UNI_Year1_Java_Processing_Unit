class Square extends Shape{
  
  Square(float x, float y, float size, color colour){
    super(x,y,size,colour);
  }
  
  @Override
  void render() {
    fill( colour );
    rect( x, y, size*2, size*2 );
  }
}
