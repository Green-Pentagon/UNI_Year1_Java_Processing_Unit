class Car{
  //TO DO
  //- Add a way to set the colour of the car.
  //- Change the image filepath seeking to look for a folder called "Outfits"
  //  - If it can't find the folder, have it search for main directory.
  //  - If no image can be found, print debug message and quit.
  //-----------------------------------------------
  private int x,y;
  private int size[] = {50,50};// {width,height}
  private boolean horizontal; //determines which axis to move the car on, set to y axis by default.
  private PImage car_image;
  private int speed = 2;
  //-----------------------------------------------
  public Car(int x, int y, boolean is_horizontal){
    this.x = x;
    this.y = y;
    horizontal = is_horizontal;
    car_image = loadImage("Car.png");
    car_image.resize(size[0],size[1]);
  }
  //-----------------------------------------------
  public void SetImage(String image_filepath){
    car_image = loadImage(image_filepath);
  }
  public void SetImageSize(int w, int h){
    car_image.resize(w,h);
    size[0] = w;
    size[1] = h;
  }
  public void SetSpeed(int speed){
    this.speed = speed;
  }
  public void SetSpeed(){
    this.speed = int(random(1,10));
  }
  public void SetOrientation(boolean is_horizontal){
    horizontal = is_horizontal;
  }
  
  public int GetSpeed()  {return speed;}
  public int[] GetSize() {return size;}
  public int[] GetPos()  {
    int[] c = {x,y};
    return c;
  }
  //-----------------------------------------------
  private void Move(){
    if ((!horizontal && (this.y<0 || this.y > height)) || (horizontal && (this.x<0 || this.x > width) )){
    speed = 0; //out of bounds check: car will halt.
    }else if (horizontal){
      this.x += speed;
    }else{
      this.y += speed;
    }
  }
  private void Render(){
    image(car_image, x,y);
  }
  
  public void Update(){
    this.Move();
    this.Render();
  }
  //===============================================
}
