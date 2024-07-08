size(500,500);
int cent_x = 250;
int cent_y = 250;
int square_width = 100;
int square_height = 100;

line(cent_x,cent_y,cent_x+square_width,cent_y);
line(cent_x,cent_y+square_height,cent_x+square_width,cent_y+square_height);

line(cent_x,cent_y,cent_x,cent_y+square_height);
line(cent_x+square_width,cent_y,cent_x+square_width,cent_y+square_height);

//for (int count = 0; count < 2; count++) {
//  if (count == 0){
//    square_width = 50;
//    square_height = 50;
//  }else{
//    square_width = -50;
//    square_height = -50;
//  }
//  line(cent_x,cent_y,cent_x+square_width,cent_y);
//  line(cent_x,cent_y,cent_x,cent_y+square_height);
//}
