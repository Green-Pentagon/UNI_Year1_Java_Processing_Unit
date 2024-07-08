
PImage image1, image2, image3;     //creates a variable to store an image file -a Class
//PImage bird[] = {};
float image_x;
float image_y = 100;
int seq_counter = 1;
PImage current_image;

void setup()
{
  size(500,500);
  image_x = width;
  
  
  //need to establish range of array before this segment of code, if possible in Java
  //{
  //bird[0] =  loadImage("bird1.jpg");
  //bird[1] =  loadImage("bird2.jpg");
  //bird[2] =  loadImage("bird3.jpg");
  //bird[0].resize(50,50);
  //bird[1].resize(50,50);
  //bird[2].resize(50,50);
  //}
  
  image1 = loadImage("bird1.jpg");   //loads an image from file and stores in the variable
  image2 = loadImage("bird2.jpg");
  image3 = loadImage("bird3.jpg");
  image1.resize(50,50);     //resize the image
  image2.resize(50,50);
  image3.resize(50,50);
  current_image = image1;
  imageMode(CENTER);
  
}

void draw()
{
  frameRate(60);
  background(200);
  
  //could probably be better
  if (image_x > 0){
      if (seq_counter <= 10 || (seq_counter <= 50 && seq_counter > 39)){
        current_image = image1;
        if ((seq_counter <= 50 && seq_counter > 39)){
          seq_counter = 1;
        }
      }else if (seq_counter <=20 || (seq_counter <= 40 && seq_counter > 29)){
        current_image = image2;
      }else if (seq_counter <= 30 || (seq_counter <= 30 && seq_counter > 19)){
        current_image = image3;
      }
      image(current_image,image_x,image_y);
      seq_counter += 2; //MODIFY RATE OF ANIMATION HERE
      image_x -= 2; //MODIFY MOVEMENT HERE
    }
    
  }
