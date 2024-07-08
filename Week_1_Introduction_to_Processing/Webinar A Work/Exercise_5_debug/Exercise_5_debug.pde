float x;
float size = 50;
float y = 30;
x = 30;

line(x,y,x+size,y);
line(x,y,x+size/2,y-size/2);
line(x+size,y,x+size/2,y-size/2);

ellipse(x,y,size/2,size/2); 
fill(0);

ellipse(x,y,size/4,size/4);

//Syntax-fixed code, unchanged logic

//float x;
//float size = 50;
//float y = 30;
//x = 30;

//ellipse(x,y,size/2,size/2); 
//fill(0,0);
//line(x,y,x+size,y);
//line(x,y,x+size/2,y-size/2);
//line(x+size,y,x+size/2,y-size/2);
//ellipse(x,y,size/2,size/2);
