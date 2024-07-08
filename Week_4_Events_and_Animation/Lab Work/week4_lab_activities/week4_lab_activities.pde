//nessesary evil globals
int size = 10;           //USED FOR EX0
float rect_x = width/2;  //USED FOR EX5
float rect_y = height/2; //USED FOR EX5
float ball_x = width/2;  //USED FOR EX6
float ball_y = height/4; //USED FOR EX6
float deltaX = 10;       //USED FOR EX6
float deltaY = 10;       //USED FOR EX6
float player_x = 250;
//float ball_acc = 0;
//------------
void setup(){
  size(500,500);
}
//=====================================================================================================================
void Ex0(){
  background(255);
  ellipse(width/2,height/2,size,size);
  if (size >=100){
     size = -size;
  }else{ 
     size++;
  }
}
//---------------------------------------------------------------------------------------------------------------------
void Ex1and2(){
  //circes drawn on the position of the cursor
  float diameter = 20;
  float seperation = 25;
  ellipse(mouseX+seperation,mouseY,diameter,diameter);
  ellipse(mouseX-seperation,mouseY,diameter,diameter);
}
//---------------------------------------------------------------------------------------------------------------------
void Ex3(){
  float x_limit = 100;
  ellipse(width/2,height/2,mouseX % x_limit,mouseY);
}
//---------------------------------------------------------------------------------------------------------------------
void Ex4(float initial_size,float seperation){
  //draws bullseye at mouse coordinate
  background(255);
  for (int count = 0;count<3;count++){
    ellipse(mouseX,mouseY,(initial_size-(count*seperation)),(initial_size-(count*seperation)));
  }
}
//---------------------------------------------------------------------------------------------------------------------
void Ex5(){
  //background(255);
  //rectangle controlled by arrow keys
  rect(rect_x,rect_y,10,20);
    if (key == CODED && keyPressed){
      if (keyCode == UP){
        rect_y--;
      }else if (keyCode == DOWN){
        rect_y++;
      }else if (keyCode == RIGHT){
        rect_x++;
      }else if(keyCode == LEFT){
        rect_x--;
      }
    }
}
//---------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------
void BallBounceCanvas(){
  if (ball_y >= height||ball_y <= 0){
    deltaY *= (-1);
  }
  if (ball_x >= width||ball_x <= 0){
    deltaX *= (-1);
  }
}

void BallBouncePlayer(){
  
}

void UpdateBall(float size){
  background(255);
  ball_y += deltaY;
  ball_x += deltaX;
  ellipse(ball_x,ball_y,size,size);
}

void Ball(){
  float ball_size = 10;
  BallBounceCanvas();
  BallBouncePlayer();
  UpdateBall(ball_size);
}

//=====================================================================================================================
void draw(){
  //frameRate(60);
  //Ex0();
  //Ex1and2();
  //Ex3();
  //Ex4(300,50);
  //Ex5();
  //Ball();
  
  
  //updates 60 times a second
}
