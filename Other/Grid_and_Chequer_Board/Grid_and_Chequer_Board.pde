void setup(){
  size(500,500);
}

void Grid(float anchor_x , float anchor_y, float square_size, float grid_dimension){
  //anchor is located at the top left corner of the grid
  //grid dimension is how many squares the grid has on a row/column
  for (int count = 0; count <(grid_dimension+1);count++){
    //draws the horizontal, then vertical line
    line((anchor_x) , (anchor_y+ (count*square_size)) , (anchor_x + (grid_dimension*square_size)) , (anchor_y + (count*square_size)));
    line((anchor_x + (count*square_size)) , (anchor_y) , (anchor_x + (count*square_size)) , (anchor_y + (grid_dimension*square_size)));
  }
}

void Chequer_Board(float anchor_x , float anchor_y, float square_size, float grid_dimension){
  for (int row = 0; row <(grid_dimension);row++){
    for (int column = 0; column <(grid_dimension);column++){
      if ((row % 2 == 0) && (column % 2 == 0) || (row % 2 != 0) && (column % 2 != 0) ){
          fill(255);
        }else{
          fill(0);
      }
      rect((anchor_x + (square_size * row)) , (anchor_y + (square_size * column)) , square_size , square_size);
    }
  }
}


void draw(){
  //Grid(50,50,50,8);
  Chequer_Board(50,50,50,8);
}
