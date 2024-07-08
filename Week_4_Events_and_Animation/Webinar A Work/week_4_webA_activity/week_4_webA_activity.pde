void setup()
{
  size(400,400);
}

void pattern(int x,int y, int size, int row, int column){
  // (x,y) , size, row, column
  int left = x;
  for(int i=0;i<row;i++)
  {
    for(int j=0;j<column;j++)
    { 
      pattern(x,y,size);
      x=x+size;
    }
    x=left;
    y=y+row;
  }
}

void pattern(float x, float y, float size){
  float half = (size/2);
  ellipse(x,y, size,size);
  ellipse(x+half,y, half,half);
  ellipse(x-half,y, half,half);
  ellipse(x,y+half, half,half);
  ellipse(x,y-half, half,half);
}

void Ex2Pattern(float x_anchor, float y_anchor, int amount, float size){
  float size_increment = 10;
  float seperation = size;
  for(int count=1;count<=amount;count++)
    { 
      pattern(x_anchor,y_anchor,size);
      y_anchor=y_anchor+size + seperation;
      size = size + size_increment;
      seperation = size;
    }
}

void draw(){
   //pattern(50,50,40,5,2);
   Ex2Pattern(50,50,10,40);
}
