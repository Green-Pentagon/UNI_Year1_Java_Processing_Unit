void setup(){
 size(500,500); 
}
//=======================================================================

void Ex0(){
  int start_x = 50;
  int start_y = 50;
  int shape_size = 50;
  int how_many = 5;
  
  for (int count = 0; count < how_many;count++){
    rect((start_x + (count*start_x)/2) , (start_y+ (count*start_y)/2) , shape_size , shape_size);
    ellipse((start_x + ((count+1)*start_x)/2) , (start_y+ ((count+1)*start_y)/2) , shape_size , shape_size);
    //(start_x + (count*start_x)/2) , (start_y+ (count*start_y)/2) , shape_size , shape_size
    //+1 for count in the ellipse x & y coordinates
  }  
}
//-----------------------------------------------------------------------
void Ex1(){
  int x= width/2;
  int y= height/2;
  int num_of_circles = 10;
  int gap = 30;//number of pixels difference for every circle

  for(int count=num_of_circles-1; count>=0; count--){
    ellipse(x,y,gap + (count * gap),gap + (count * gap));
    // 5 + (num_of_circles * gap)
  }
}
//-----------------------------------------------------------------------
void Ex2a(){
  int start_x = 50;
  int start_y = 50;
  int line_length = 50;
  int seperation = 20;
  int amount = 4;
  
  for (int count = 0; count < amount; count++){
    line(start_x + (seperation*count) , start_y , start_x + (seperation*count) , start_y + line_length);
  }
}
//---
void Ex2b(){
  int start_x = 100;
  int start_y = 50;
  int line_length = 50;
  int seperation = 20;
  int amount = 4;
  int focus_x = start_x + (amount * seperation)/2;
  
  //not too sure why this doesn't end up with the point in the crenre of the pattern...
  for (int count = 0; count <= amount; count++){
    line(start_x + (seperation*count) , start_y , focus_x , start_y + line_length);
  }
}
//---
void Ex2c(){
  int start_x = 200;
  int start_y = 200;
  int line_length = 200;
  int seperation = 10;
  int amount = 20;
  //funny how this one works but 2b doesn't.
  for (int count = 0; count <= amount; count++){
    line(start_x + (seperation * count) , start_y , (start_x + (amount*seperation - count*seperation)) , start_y + line_length);
    //start_x + (seperation * count) , start_y , (start_x + (amount*seperation - count*seperation)) , start_y + line_length
  }
}
//-----------------------------------------------------------------------
void Ex3(){
  int num_rows = 10;
  int num_columns = 4;
  int circle_diameter = 20;
  
  
  ellipseMode(CORNER);
  int anchor_x = 50;
  int anchor_y = 50;
  
  //the pattern is a circle with a cross inside
  for (int row = 0;row<num_rows;row++){
    for (int column = 0;column<num_columns;column++){
      ellipse(anchor_x+ (circle_diameter * column) , anchor_y + (circle_diameter * row) , circle_diameter , circle_diameter);
      line((anchor_x+ (circle_diameter/2 + circle_diameter*column)) , anchor_y , (anchor_x+ (circle_diameter/2 + circle_diameter*column)) , anchor_y + circle_diameter*num_rows);
    }
    line(anchor_x , (anchor_y+ (circle_diameter/2 + row*circle_diameter)) , anchor_x + (circle_diameter*num_columns) , (anchor_y+ (circle_diameter/2 + row*circle_diameter)));
    // (anchor_x+ (circle_diameter/2)) , anchor_y , (anchor_x+ (circle_diameter/2)) , anchor_y + circle_diameter
}
  
  
}
//-----------------------------------------------------------------------
void Ex4a(){
  //Accidentally made spaghetti code out of this, oops!
  int num_rows = 5;
  int num_columns = 5;
  int circle_diameter = 20;
  int line_alter_vert;
  int line_alter_hori;
  
  ellipseMode(CORNER);
  int anchor_x = 50;
  int anchor_y = 50;
  
  //the pattern is a circle with a cross inside
  for (int row = 0;row<num_rows;row++){
    line_alter_hori = num_rows-row;
    for (int column = 0;column<line_alter_hori;column++){
      line_alter_vert = num_columns-column;
      ellipse(anchor_x+ (circle_diameter * column) , anchor_y + (circle_diameter * row) , circle_diameter , circle_diameter);
      line((anchor_x+ (circle_diameter/2 + circle_diameter*column)) , anchor_y , (anchor_x+ (circle_diameter/2 + circle_diameter*column)) , anchor_y + circle_diameter*line_alter_vert);
    }
    line(anchor_x , (anchor_y+ (circle_diameter/2 + row*circle_diameter)) , anchor_x + (circle_diameter*line_alter_hori) , (anchor_y+ (circle_diameter/2 + row*circle_diameter)));
  }
}
//---
void Ex4b(){}
//-----------------------------------------------------------------------
void Ex5(){
  //ALREADY DONE IN SAME WEEK WEBINAR (Ex3)
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
//-----------------------------------------------------------------------
void Ex6(){
  //it appears that this method is endlessly called within the draw statement
  //therefore it causes the stroke to always change its colour
  
  //float r = random(50);  //random number [0..50]
  //float g = random(50);
  //float b = random(50);
    
  float x= width/2;
  float y=height/2; 
  float radius = 100;
  float angle; //in radians
  for(int degrees=0; degrees<360; degrees = degrees+10)
  {
     angle = radians(degrees); //convert degrees to radians
      line(x,y, x+radius*sin(angle),y+radius*cos(angle));
      //stroke(r*5,g*5,b*5); //random line colour
  }
}
//-----------------------------------------------------------------------
void Ex7(){
  float radius = 40;
  float x= 20 + radius;
  float y= 20 + radius; 
  float angle; //in radians
  float max_rows = 5;
  float max_columns = 5;
  
  for (int row = 0;row < max_rows;row++){
    x= 20 + radius;
    for (int column = 0;column < max_columns;column++){
      for(int degrees=0; degrees<360; degrees = degrees+10){
        angle = radians(degrees); //convert degrees to radians
        line(x,y, x+radius*sin(angle),y+radius*cos(angle));
      }
      x += radius*2;
    }
    y+= radius*2;
  }
}
//-----------------------------------------------------------------------
void Ex8(){
  int anchor_x = 100;
  int anchor_y = 100;
  int seperation = 20;
  int counter = 1;
  for (int row = 0;row<10;row++){
    for (int column = 0;column<10;column++){
      text(""+counter , anchor_x + seperation*column ,anchor_y + seperation*row);  //draws value of count at x,y
      counter += 1;
    }
  }
}
//-----------------------------------------------------------------------
void Ex9(){
  int colour = 0;
  //void choose_col(){
  //  if (colour = 0){
  //    colour = 255;
  //  }else{
  //  colour = 0;
  //  }
  //  fill(colour);
  //}
  
  
  int anchor_x = 0;
  int anchor_y = 0;
  int intensity = 4; //how many pixels are cut off each subsequent tile
  int initial_width = 30;
  int initial_height = 30;
  //for every iteration, decrease the width of the subsequent square & change it's colour
  //do this till width is <=1, where you reverse
  //repeat for n number of times
  //stack in chequer board pattern.
  while (anchor_y < height){
  while (anchor_x < width){
    for (int tile_width = initial_width; tile_width>1;tile_width -= intensity){
      rect((anchor_x),(anchor_y),tile_width , initial_height);
      anchor_x += tile_width;
      
       if (colour == 0){
        colour = 255;
      }else{
      colour = 0;
      }
      fill(colour);
    }
    for (int tile_width = 1; tile_width<=initial_width;tile_width += intensity){
      rect((anchor_x),(anchor_y),tile_width , initial_height);
      anchor_x += tile_width;
      
       if (colour == 0){
        colour = 255;
      }else{
        colour = 0;
      }
      fill(colour);
      
    }
  }
  if (colour == 0){
        colour = 255;
      }else{
        colour = 0;
      }
      fill(colour);
  anchor_y += initial_height;
  anchor_x = 0;
  }
  
}
//-----------------------------------------------------------------------
//=======================================================================
void draw(){
  //Ex0();
  //Ex1(); 
  //Ex2a();
  //Ex2b();
  //Ex2c();
  //Ex3();
  //Ex4a();
  //Ex4b(); //Passing on Ex4b due to me making the code in 3 & 4a too complicated
  //Ex5();
  //Ex6();
  //Ex7();
  //Ex8();
  Ex9();
}
