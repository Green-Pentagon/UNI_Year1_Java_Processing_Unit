class DirectionWalker{
  private int x,y;
  private int speedX = 0;
  private int speedY = 0;
  
  private String[] avaliable_directions = {"UL","UC","UR","CL","CC","CR","DL","DC","DR"};
  private PImage[] direction_images = new PImage[avaliable_directions.length];
  private int[] size = {50,50};
  //POSITIVE X = RIGHT
  //POSITIVE Y = DOWN
  private int current_direction = 0;
  private String[] filename_elements = {"",""};
  // example: {"walker" , ".gif"}
  
  DirectionWalker(int x, int y, String shared_filename, String shared_file_ext){
    this.x = x;
    this.y = y;
    filename_elements[0] = shared_filename;
    filename_elements[1] = shared_file_ext;
    LoadDirections();
  }
  
  private void LoadDirections(){
    String filename;
    for (int i = 0; i<avaliable_directions.length;i++){
      filename = filename_elements[0] + avaliable_directions[i] + filename_elements[1];
      direction_images[i] = loadImage(filename);
      direction_images[i].resize(size[0],size[1]);
    }
  }  
  
  public void SetSpeed(int speedX, int speedY){
    this.speedX = speedX;
    this.speedY = speedY;
    UpdateDirection();
  }
  
  
  private void UpdateDirection(){
    //chooses the image to display, depending on the X and Y speed of the sprite
    //binary search.
    
    int new_dir = 4; //starts off from centre
    if (speedY < 0){
      new_dir -= 3;//"U"
    }else if (speedY > 0){
      new_dir += 3;//"D"
    }
    if (speedX < 0){
      new_dir -= 1;// "L"
    }else if (speedX > 0){
      new_dir += 1;//"R"
    }
    current_direction = new_dir;
    
  }
  
  public void Render(){
    image(direction_images[current_direction], x,y);
  }
  
  
  
    
    
}
