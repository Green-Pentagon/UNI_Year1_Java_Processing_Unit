abstract class Animal {

  float x, y;
  float speedX = 3;
  float speedY = -1;
  int w, h;
  PImage img;

  Animal(float x, float y) {
    this.x = x;
    this.y =y;
  }

  void render() {
    image(img, x, y);
  }

  void update() {
    move();
    render();
  }

  void move() {
    x+=speedX;
    if (x < 0 || x >= width-w) {
      speedX = -speedX;
    }
  }

  
}
