void setup(){
  size(500,500);
}
//------------
void draw(){ }
//------------

//NOTES:
//
//1. create the ball class
//2. create the player class
//3. create the game class
//4. check/create ball interactions
//5. create a single player
//6. create two players
//7. add scoring
//

//=====================================================================================================================
public class Ball{
  private float x;
  private float y;
  private float size;
  private float[] movement_step; // at index 0 is horizontal step, at 1 is vertical step 
  private float[] bgRGB;
  private boolean trail;         //if truel, doesn't update the screen, giving ball a trail of sorts
  //TRAIL FEATURE IS LIMITED BY HAVING TO REDRAW THE ENTIRE BACKGROUND
  //A ball with and without a trail will have both balls not draw a trail.
  
  
  //public void Main(float[] backgroundRGB){
  //  x = width/2;
  //  y = height/2;
  //  size = 20;
  //  movement_step[0] = 10;
  //  movement_step[1] = 10;
  //  bgRGB = backgroundRGB;
  //}
 
  public void Main(float start_x,float start_y,float[] backgroundRGB){
    x = start_x;
    y = start_y;
    trail = false;
    size = 20;
    movement_step[0] = 10;
    movement_step[1] = 10;
    bgRGB = backgroundRGB;
  }
  
  private boolean[] IsTouchingWall(){
    boolean[] colliding = {(y >= height||y <= 0),(x >= width||x <= 0)};
    //horizontal wall collision , vertical wall collision
    return colliding;
  }
  
  private boolean IsTouchingPlayer(){
    //THIS METHOD MAY NEED TO BE CARRIED OUTSIDE OF THE BALL CLASS AND WITHIN THE GAME PARENT CLASS
    return false;
  }
  
  private void DrawBG(){
    background(bgRGB[0],bgRGB[1],bgRGB[2]);
  }
  
  private void DrawBall(){
    ellipse(x,y,size,size);
  }
  
  private void UpdatePos(){
    x += movement_step[0];
    y += movement_step[1];
  }
  
  private void FlipMovement(){
    //flips the step's "polarity" (positive to negative, vise versa.)
    //currently does not take into account players!!!
    if (IsTouchingWall()[0]) {movement_step[0] *= (-1);}
    if (IsTouchingWall()[1]) {movement_step[1] *= (-1);}
  }
  
  public void Move(){
    //performs the sequence of moving the ball by an amount on the screen
    FlipMovement();
    if (!trail) {DrawBG();}
    UpdatePos();
    DrawBall();
  }
}
//---------------------------------------------------------------------------------------------------------------------
public class Player{
  private float player_x;
  private float player_y;
  
  public void Main(){
    player_x = width/2;
    player_y = height - 30;
  }
  
}
//---------------------------------------------------------------------------------------------------------------------
public class Game{
  
}
