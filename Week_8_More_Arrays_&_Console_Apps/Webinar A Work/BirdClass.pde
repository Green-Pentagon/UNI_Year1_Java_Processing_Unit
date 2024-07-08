
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
    //animation logic
    //every 15 frames, change animation frame
    image(animation[(imgCounter/15) % animation.length],x,y);
    imgCounter++;
    if (imgCounter > 1000){
      imgCounter = 0;
    }
  }
}
