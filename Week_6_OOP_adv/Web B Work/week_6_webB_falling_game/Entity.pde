//ENTITY CLASS VERSION 1.2

//TO DO:
//- implement a successful collision check
//- if approrpiate, make the Move method's polymorphism more efficient

class Entity {
  //for reference:
  //hitbox = associated with an attack
  //hurtbox = associated with entity taking damage
  protected int x, y;
  protected float[] speed = {1.0f, 1.0f};
  private int[] size = {30, 20}; // {width,height}
  private PImage sprite;
  private int[] hurtbox = {x, y, x+size[0], y+size[1]};
  private int[] hitbox = new int[3];
  //-----------------------------------------------
  public Entity(int x, int y, String image_filepath) {
    this.x = x;
    this.y = y;
    sprite = loadImage(image_filepath);
    sprite.resize(size[0], size[1]);
  }
  //-----------------------------------------------
  public int[] GetPos() {
    int[] coord = {x, y};
    return coord;
  }
  public int[] GetSize() {
    return size;
  }
  public int[] GetHurtbox() {
    return hurtbox;
  }
  public int[] GetHitbox() {
    return hitbox;
  }
  
  public boolean HasCollided(int[] obj_hurtbox){
    return false;
    //if the boxes intersect.
    //need to check the top left and bottom right corner of the hitbox, in order to cover the entire hitbox.
    
    //if the left side of the foreign object is not between the left size of the main object & right side of this object
    //if the up side of the foreign object is not between the up & down side of the main object
    //if the distance from the left side of the object is not close enough for right side to intersect
    //if the distance from the up side of the object is not close enough for the down size to intersect
    //FOR LAST TWO, YOU CAN ALSO REPEAT THE CHECK YOU WOULD DO FOR THE LEFT AND UP SIDE
    
    
    //LIMITED? SOLUTION
    //if abs(this.hurtbox[0]-obj_hurtbox[0]) < abs(this.hurtbox[0]+ this.hurtbox[2])
    //if abs(this.hurtbox[1]-obj_hurtbox[1]) < abs(this.hurtbox[0] + this.hurtbox[3])
  }
  
  //-----------------------------------------------
  public void SetSpeed(float horiz_speed, float vert_speed) {
    speed[0] = horiz_speed;
    speed[1] = vert_speed;
  }
  public void SetHitbox(int[] coords){
    hitbox = coords;
  }
  public void SetSize(int w, int h) {
    size[0] = w;
    size[1] = h;
    sprite.resize(size[0], size[1]);
  }
  //-----------------------------------------------
  protected boolean OnScreen() {
    if ((x > 0 && x < (width-size[0])) && ((y > 0 && y < (height-size[1]))) ) {
      return true;
    }
    return false;
  }

  public void Move(float dir_x, float dir_y) {
    //inputs: 1 , 0 , -1
    //format = {x_direction , y_direction}
    //moves in appropriate direction

    //if (OnScreen()) { //BUG: Disallows player to move once boundary is touched.
    this.x += (dir_x * speed[0]);
    this.y += (dir_y * speed[1]);
    //}
  }
  
  public void Move(float[] move_vec) {
    //inputs: 1 , 0 , -1
    //format = {x_direction , y_direction}
    //moves in appropriate direction

    //if (OnScreen()) { //BUG: Disallows player to move once boundary is touched.
    this.x += (move_vec[0] * speed[0]);
    this.y += (move_vec[1] * speed[1]);
    //}
  }

  public void Render() {
    image(sprite, x, y);
  }
}
