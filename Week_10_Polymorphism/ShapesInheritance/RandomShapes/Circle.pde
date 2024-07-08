class Circle extends Shape {


  Circle( float x, float y, float size, color colour) {
    super(x, y, size, colour);
  }

  @Override
  void render() {
    fill( colour );
    ellipse( x, y, size*2, size*2 );
  }

}
