//Globals (for sake of simplicity over re-usability)
float cloud_x = 0;
float cloud_y = 50;
float cloud_size = 50; //dictates the size of the largest circle in the cloud
//-----------------------------------------------
void setup(){
  size(500,300);
}
//-----------------------------------------------
void draw(){
  background(0,200,255);// cyan coloured bg
  if (cloud_x < width){
    Cloud(cloud_x,cloud_y,cloud_size);
    cloud_x++;
  }
}
//===============================================
void Cloud(float x, float y, float size){
  //The cloud should be made of three white circles, small, large, medium.
  //don't want to make the for loop too complicated, but still want to keep it for efficiency.
  
  float size_delta = 7; //the change in px from the largest to smallest circle
  float seperation = size/2; //the change in distance from centres of two drawn circles
  ellipseMode(CENTER);
  //ellipse(x,y,size,size);
  for (int count = -1;count < 1;count++){
    ellipse(x + (seperation * count) , y, (size - (size_delta*abs(count))), (size - (size_delta*abs(count))));
  }
  ellipse( x + seperation , y, size - (size_delta * 2) , size - (size_delta * 2));
}
