void setup(){
  size(500,240);
  background(0,30,255);
}
//======================================================================================
void cloud(float x_anchor, float y_anchor, int size){
  fill(255);
  stroke(0);
  ellipse((x_anchor-size)+5,(y_anchor+3), size,size);
  ellipse(x_anchor,y_anchor, size*1.5,size*1.5);
  ellipse((x_anchor+size)-5,(y_anchor+3), size,size);
}
//--------------------------------------------------------------------------------------
void sun(float x_anchor, float y_anchor, int size){
  fill(255,255,0);
  stroke(255,255,0);
  //draws the rays of the sun - code taken from week_2_lab_activities
  float angle; //in radians
  for(int degrees=0; degrees<360; degrees = degrees+10)
  {
     angle = radians(degrees); //convert degrees to radians
      line(x_anchor,y_anchor, x_anchor+size*sin(angle),y_anchor+size*cos(angle));
      //stroke(r*5,g*5,b*5); //random line colour
  }
  ellipse(x_anchor,y_anchor,size,size);
}
//--------------------------------------------------------------------------------------
void landscape(){
  int sky_y_constant = 50;
  fill(0,255,40);
  rect(0,height/2,width,height/2);//land
  sun(width/2,sky_y_constant,40);
  cloud(150,sky_y_constant,30);
  cloud(300,sky_y_constant,30);
}
//======================================================================================
void house(float anchor_x, float anchor_y, int size){
  //draws a square house with a roof and 4 square windows
  triangle(anchor_x,anchor_y,anchor_x+size,anchor_y,anchor_x+(size/2),anchor_y-(size/2));
  rect(anchor_x,anchor_y,size,size);
  for (int step = 1;step<3;step++){//draws two windows, horizontally adjacent
    rect(anchor_x+(size/4)-(size/10) , anchor_y+(size/4)*step+((step-1)*(size/10)), size/4, size/4);
    rect(anchor_x+(size/2)+(size/10) , anchor_y+(size/4)*step+((step-1)*(size/10)), size/4, size/4);
  }
}
//--------------------------------------------------------------------------------------
void house_row(int anchor_x, int anchor_y,int number_of_houses, int house_size){
  //draws a row of houses
  for (int current_x = anchor_x;current_x<(anchor_x + (number_of_houses)*house_size); current_x = current_x + house_size){
    house(current_x,anchor_y,house_size);
  }
}
//======================================================================================
void draw(){
  //landscape();
  house_row(50,50,4,50);
}
