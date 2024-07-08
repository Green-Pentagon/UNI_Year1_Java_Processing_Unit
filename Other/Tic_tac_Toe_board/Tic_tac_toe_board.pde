//Grid: 300x300, 100x100 for each square

size(500,500);
strokeWeight(2);
background(255);

int top_left_corner_x = 10;
int top_left_corner_y = 10;
int square_size = 100;
int grid_size = 300;

for (int step = 1; step < 3; step++){
  //first line draws each vertical grid line, second line draws each horizontal line
   line((top_left_corner_x+(square_size*step)), top_left_corner_y , (top_left_corner_x+(square_size*step)) , top_left_corner_y+grid_size);
   line(top_left_corner_x, (top_left_corner_y+(square_size*step)) , top_left_corner_x+grid_size , (top_left_corner_y+(square_size*step)));
}

//draws naught in the centre tile
ellipse((150+top_left_corner_x),(150+top_left_corner_y),90,90);
