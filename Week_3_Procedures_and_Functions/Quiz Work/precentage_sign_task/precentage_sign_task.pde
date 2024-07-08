void setup(){
  size(500,500);
}

void Percent_Symbol(int size, float anchor_x, float anchor_y){
  //size dictates the size of the entire shape in px
  //anchors determine the TOP LEFT corner position of the shape
  
  //draw the diagonal line from one corner to the other (of the bounding box)
  //add ellipses about 1/4 , 1/4 & 3/4 , 3/4 of overall dimensions.
  
  line(anchor_x , anchor_y + size , anchor_x + size , anchor_y);
  ellipse(anchor_x + (size/4) , anchor_y + (size/4) , size/2 , size/2);
  ellipse(anchor_x + (size/4)*3 , anchor_y + (size/4)*3 , size/2 , size/2);
}

void draw(){
  Percent_Symbol(100,50,50);
}
