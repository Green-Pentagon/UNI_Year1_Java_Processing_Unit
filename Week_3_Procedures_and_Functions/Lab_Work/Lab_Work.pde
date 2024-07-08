void setup(){
  size(500,500);
}
//==========================================================================================
void square(float x_anchor, float y_anchor, float size, boolean draw_from_centre){
  if (draw_from_centre){
    rectMode(CENTER);
  }else{
    rectMode(CORNER);//top-left corner!
  }
  rect(x_anchor,y_anchor,size,size);
}
//------------------------------------------------------------------------------------------
void circle(float x_anchor, float y_anchor, float diameter, boolean draw_from_centre){
  if (draw_from_centre){
    ellipseMode(CENTER);
  }else{
    ellipseMode(CORNER);//top-left corner!
  }
  ellipse(x_anchor,y_anchor,diameter,diameter);
}
//------------------------------------------------------------------------------------------
void Tv_Shape(float centre_square_x, float centre_square_y, float shape_width){
  //this draws a half-circle and two squares underneath it
  //the height of the shape is 1/3 the half-circle height and 2/3 the height of the square
  circle(centre_square_x,(centre_square_y - shape_width/2),shape_width,true);
  square(centre_square_x,centre_square_y,shape_width,true);
  square(centre_square_x,centre_square_y,shape_width - (shape_width/3),true);
}
//------------------------------------------------------------------------------------------
void Ex0(){
  //hard coded since I don't see the reason to loop through the code for the desired output
  Tv_Shape(100,200,100);
  Tv_Shape(200,300,50);
  Tv_Shape(300,400,75);
}
//------------------------------------------------------------------------------------------
void bike(float x_anchor, float y_anchor, float shape_width, float shape_height){
  //ANCHOR LOCATED IN THE TOP-LEFT CORNER (which contains the triangle, but not the wheels)
  triangle(x_anchor , y_anchor + shape_height , x_anchor+(shape_width/2) , y_anchor , x_anchor + shape_width , y_anchor + shape_height);
  for (int count = 0;count<2;count++){//draws two wheels
    for (int size = 2;size>0;size--){//draws a wheel
      fill(255 * ((-size)+2 ));
      circle(x_anchor+(shape_width*count) , y_anchor+shape_height , (shape_width/6)*size , true );
    }
  }
}
//------------------------------------------------------------------------------------------
void SquareCircle(float x_anchor, float y_anchor, float size, boolean draw_from_centre){
  square(x_anchor, y_anchor , size, draw_from_centre);
  circle(x_anchor, y_anchor , size, draw_from_centre);
}
//------------------------------------------------------------------------------------------
void Ex2_and_3(){
  int shape_size = 30;
  int starting_x = 50;
  int y_anchor = 50;
  int amount = 5;
  for (int x_anchor = starting_x ; x_anchor<=(shape_size*(amount-1) + starting_x) ; x_anchor += shape_size){
    SquareCircle(x_anchor, y_anchor , shape_size, false);
  }
}
//------------------------------------------------------------------------------------------
void House(float anchor_x, float anchor_y, float shape_width){
  //this draws a house with two windows, a door and an attic window
  //the height of the shape is 1/3 the roof and 2/3 the height of the square making the body of the house
  //main shape
  triangle(anchor_x , anchor_y , anchor_x + (shape_width/2) , anchor_y - (shape_width/2) , anchor_x + shape_width , anchor_y);
  square(anchor_x,anchor_y,shape_width,false);
  //windows & door
  circle(anchor_x + (shape_width/2) , anchor_y - (shape_width/4) , shape_width/4, true);
  square(anchor_x + shape_width/2 , anchor_y + (shape_width/9) , (shape_width/3), false);
  square(anchor_x + shape_width/2 , anchor_y + (shape_width/2) , (shape_width/3), false);
  rect(anchor_x+(shape_width/10) , anchor_y + shape_width/2 , shape_width/4 , shape_width/2); 
}
//------------------------------------------------------------------------------------------
void Ex4(){
  int street_size = 100; //the seperation bg and fg
  int number_of_houses = 5; //number of houses in both fg and bg rows
  
  int bg_anchor_x = 50;
  int bg_anchor_y = 50;
  int bg_house_size = 50;
  int bg_house_seperation = 5;
  
  int fg_house_seperation = 10;
  int fg_anchor_y = bg_anchor_y + street_size;
  int fg_anchor_x = bg_anchor_x;
  int fg_house_size = 75;
  
  for (int count = 0; count < number_of_houses;count++){
    House(bg_anchor_x + ((bg_house_size + bg_house_seperation)*count) , bg_anchor_y , bg_house_size);
    House(fg_anchor_x + ((fg_house_size + fg_house_seperation)*count) , fg_anchor_y , fg_house_size);
  }
}
//==========================================================================================
void draw(){
  //Ex0();
  //bike(100,100,100,50); //Ex1
  //Ex2_and_3();
  Ex4();
  
  
}
