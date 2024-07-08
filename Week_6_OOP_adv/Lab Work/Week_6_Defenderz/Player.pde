class Player extends Entity {
  Player(int x, int y, String image_filepath){
    super(x,y,image_filepath);
    SetSpeed(5.0f,5.0f);
  }
}
