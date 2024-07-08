class Owl extends Bird implements Flying{

  Owl(float x, float y) {
    super(x, y);
    w = 100;
    h = 100;
    img = loadImage("owl.png");
    img.resize(w, h);
  }
  
  @Override
  void fly() {
    y+=speedY;
  }
  
}
