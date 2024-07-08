class Obstacle extends Entity {
  Obstacle() {
    super(width/2, height-51, "debug.png");
    super.SetSpeed(0.0f, -1.0f);
    super.SetSize(50, 50);
  }
}
