class Alien extends Entity {
  Alien(int x, int y, String image_filepath) {
    super(x, y, image_filepath);
    SetSpeed(0.0f, 5.0f);
  }

  public void Move() {
    //  BUGGED!!! Debug this to allow an alternating pattern...
    if (!OnScreen()) { //<>//
      if (y >= height){
        y = height - 100;
      } //<>//
      SetSpeed(speed[0], -speed[1]); //<>//
    }
    super.Move(speed);
  } //<>//
}
