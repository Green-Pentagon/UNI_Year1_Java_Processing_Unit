class Pig extends Animal {

  Pig(float x, float y) {
    super(x, y);
    w = 100;
    h = 50;
    img = loadImage("pig.png");
    img.resize(w, h);
  }
  
}
