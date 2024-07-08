void setup(){
  size(500,500);
  stroke(0);
}

void Ex1(float x_val,float y_val){
  //row of 5 crosses
  int cross_size = 20;
  int seperation = 50; //distance between each cross centre
  for (int count = -2; count <3; count++){
    line((x_val-(cross_size/2) + (seperation * count) ),(y_val),((x_val+(cross_size/2) + (seperation * count))),(y_val));
    line((x_val + (seperation * count)),(y_val-(cross_size/2)),(x_val + (seperation * count)),(y_val+(cross_size/2)));
  }
}

void Ex2(float x_val,float y_val){
  // 5x5 cross pattern (same as Ex1 but added verticality)
  int cross_size = 20;
  int seperation = 50; //distance between each cross centre
  
  for (int y_count = 1; y_count<6;y_count++){
    for (int x_count = -2; x_count <3; x_count++){
      line((x_val-(cross_size/2) + (seperation * x_count) ),(y_val),((x_val+(cross_size/2) + (seperation * x_count))),(y_val));
      line((x_val + (seperation * x_count)),(y_val-(cross_size/2)),(x_val + (seperation * x_count)),(y_val+(cross_size/2)));
    }
    y_val += seperation;
  }
}

void Ex3(){
  //two ellipses, then a line goinf from their centres horizontally
  //repeat 10 times down and in 3 columns
  //for sake of not having bloat, I'll seperate each circle by their radius
  float circle_diameter = 20;
  float y_start = 50;
  float x_start = 50;
  float row_seperation = 40; //seperation between each shape vertically
  float column_seperation = 80;
  
  for (int column = 1; column<4; column++){
    for (int row = 1; row<11; row++){
      ellipse(((x_start + (column*column_seperation)) - circle_diameter),(y_start + (row*row_seperation)), circle_diameter,circle_diameter);
      ellipse(((x_start + (column*column_seperation)) + circle_diameter/2),(y_start + (row*row_seperation)), circle_diameter,circle_diameter);
      line(((x_start + (column*column_seperation)) - circle_diameter),(y_start + (row*row_seperation)),((x_start + (column*column_seperation)) + circle_diameter/2),(y_start + (row*row_seperation)));
    }
  }
}

void Ex4(){
  //10x10 circle pattern
  float circle_diameter = 5;
  float y_start = 10;
  float x_start = 10;
  
  for (int column = 1; column<11; column++){
    for (int row = 1; row<11; row++){
      ellipse(((x_start * column) - circle_diameter),(y_start * row), circle_diameter,circle_diameter);
    }
  }
}

void Ex5(float x_val,float y_val){
  //pyramid of squares, dont forget this command exists! rect();
  int square_size = 10;
  int pyramid_size = 20;
  
  //starting from x,y on top, desend
  //increase the number of squares put on either side of the stem (centre strip) of the shape
  //rect(x_val,y_val , square_size, square_size);
  for (int p_height = 0;p_height< (pyramid_size+1);p_height++) { //height of the pyramid
    for (int leaf = (-p_height);leaf<p_height+1;leaf++){ //draws the number of squares depending on the pyramid level
      rect((x_val + (square_size * leaf)) , (y_val + (square_size*p_height)) , square_size , square_size);
    }
  }
}


void draw(){
  float cent_x = width/2;
  float cent_y = height/2;
  //Ex1(cent_x,cent_y);
  //Ex2(cent_x,cent_y);
  //Ex3();
  //Ex4();
  Ex5(cent_x,cent_y);
}
