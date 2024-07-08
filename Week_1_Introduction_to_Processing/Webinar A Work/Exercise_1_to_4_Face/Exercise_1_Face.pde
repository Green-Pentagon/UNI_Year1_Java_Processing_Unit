//To fix: make the face alligned to the centre of the screen


//this is a comment - draw a face
size(500,500);
int screen_size = 500;
//size of the screen must be decided on before any variables are initalised


int x = screen_size/2;//centre of screen
int y = screen_size/2;//centre of screen
int size = 3;
int size_compensation = 10*size; //(25*(size-1)); originally, too messy //moves the eyes & tweaks mouth
int eyegap = 5*size; //difference in coordinates between the centre of the 
strokeWeight(size);

fill(0,255,0);//green fill for face
ellipse(x,y,50*size,50*size); //35,35 = centre of the face, tweak for better look
fill(255);

ellipse(x-eyegap-size_compensation,y-eyegap-size_compensation, size_compensation,size_compensation); //left eye
point(x-eyegap-size_compensation,y-eyegap-size_compensation);  //left eye centre

line(x-size_compensation,y, x+size_compensation,y);  //mouth

ellipse(x+eyegap+size_compensation,y-eyegap-size_compensation, size_compensation,size_compensation); //right eye
point(x+eyegap+size_compensation,y-eyegap-size_compensation);  //right eye centre
