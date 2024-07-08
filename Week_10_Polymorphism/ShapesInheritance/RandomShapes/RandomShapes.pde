//Star[] starArray = new Star[50]; // array of 50 Stars
//Circle[] circleArray = new Circle[50]; // array of 50 Circles
//Square[] squareArray = new Square[50]; // array of 50 Squares
Shape[] shapeArray = new Shape[150];

void setup() {
  size( 500, 500 );

  // create some random circles and stars
  for (int i = 0; i < shapeArray.length; i++ ) {
    float x = random(width);
    float y = random(height);
    float size = random(height * 0.1);
    color colour = randomColour();
    int rnd = (int)random(1, 4);
    switch (rnd) {
    case 1:
      shapeArray[i] = new Circle(x, y, size, colour);
      break;
    case 2:
      shapeArray[i] = new Square(x, y, size, colour);
      break;
    case 3:
      shapeArray[i] = new Star(x, y, size, colour, (int)random(3, 11));
      break;
    }
  }
}

void draw() {
  background(255); // set background to white
  for (Shape c_shape: shapeArray){
    c_shape.update();
  }
}
color randomColour() {
  return color( (int)random(256), (int)random(256), (int)random(256) );
}
