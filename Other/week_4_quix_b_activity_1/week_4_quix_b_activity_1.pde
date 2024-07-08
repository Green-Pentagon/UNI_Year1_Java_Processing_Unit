//Globals (for sake of simplicity over re-usability)

//-----------------------------------------------
void setup(){
  float circle_size = 10;
  float count = 10;
  float x_start = 50;
  float y_start = 50;
  size(500,300);
  CircleGrid(x_start,y_start, count, circle_size);
}

void CircleGrid(float x, float y,float grid_size , float size){
  for (int row = 0;row<grid_size;row++){
    for (int column = 0;column<grid_size;column++){
      if (row == column){
        fill(255,0,0); //fill red if equal, else fill green
      }else{
        fill(0,255,0);
      }
      ellipse(x + (column * size) , y + (row * size) , size, size);
    }
  }
}

//-----------------------------------------------
void draw(){}
//===============================================
