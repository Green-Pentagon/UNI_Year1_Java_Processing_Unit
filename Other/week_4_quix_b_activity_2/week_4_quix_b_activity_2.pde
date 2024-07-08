//Globals (for sake of simplicity over re-usability)

//-----------------------------------------------
void setup(){
  float shape_size = 10;// the size of an individual shape in the grid
  float count = 5;
  float x_start = 50;
  float y_start = 50;
  size(500,300);
  ShapeGrid(x_start,y_start, count, shape_size);
}

void Shape(float x, float y, float c_size,float r_size){
  //r_size = rectangle size, c_size = circle size
  rectMode(CENTER);
  ellipseMode(CENTER);
  //circle inside of a square
  rect(x,y,r_size,r_size);
  ellipse(x,y,c_size,c_size);
  
}
void ShapeGrid(float x, float y,float grid_size , float size){
  for (int row = 0;row<grid_size;row++){
    for (int column = 0;column<grid_size;column++){
      Shape(x + (column * (size*2)) , y + (row * (size*2)) , size, size*2);
    }
  }
}

//-----------------------------------------------
void draw(){}
//===============================================
