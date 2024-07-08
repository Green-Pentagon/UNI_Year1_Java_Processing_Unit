class Ostrich extends Bird {

  Ostrich(float x, float y) {
    super(x, y);
    w = 100;
    h = 150;
    img = loadImage("ostrich.png");
    img.resize(w, h);
  }
  
}
