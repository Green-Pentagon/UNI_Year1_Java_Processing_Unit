
class Bird {

  int x;
  int y;
  int imgCounter; // used to decide which image to render
  PImage[] animation = new PImage[4];
  String[] filename = {"bird" , ".png"};

  Bird(int x, int y) {
    this.x = x;
    this.y = y;
    //load frames of sprite animation
    for (int i = 1;i <= animation.length;i++){
      animation[i-1] = loadImage(filename[0] + i + filename[1]);
    }
  }

  void update() {
    move();
    render();
  }

  void move() {
    x -= random(2, 5);
    // if bird goes off screen, reset the x to width
    if (x < 0-animation[0].width) {
      x = width;
    }
  }

  void render() {
    //decides on which frame to show, depending on the imgCounter's value
    if (imgCounter < 10) {
      image(animation[0], x, y);
    } else if (imgCounter < 20) {
      image(animation[1], x, y);
    } else if (imgCounter < 30) {
      image(animation[2], x, y);
    } else if (imgCounter < 39) {
      image(animation[3], x, y);
    } else {
      image(animation[3], x, y);
      imgCounter=0;
    }
    imgCounter++;
  }
}
