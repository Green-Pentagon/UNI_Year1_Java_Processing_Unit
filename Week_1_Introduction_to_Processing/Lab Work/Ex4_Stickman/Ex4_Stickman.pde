void setup(){
  size(500,500);
  strokeWeight(3);
}

void draw() {
  background(255);
  int centre_x = 250;
  int centre_y = 250;
  //point(centre_x,centre_y);
  int size = 3;
  int head_radius = 50 * size;
  int torso_height = 100 * size;
  int arm_length = 30 * size;
  int leg_length = 30 * size;

  //Allowing the hands to wave depending on which mouse button is pressed
  int left_arm_offset = centre_y;
  int right_arm_offset = centre_y;
  if (mousePressed){
    if (mouseButton == LEFT){
      left_arm_offset = mouseY;
    }else if (mouseButton == RIGHT){
      right_arm_offset = mouseY;
    //EPILEPSY WARNING - scrapped
    //}else if (mouseButton == CENTER){
      //background(int(random(255)) , int(random(255)) , int(random(255)));
    }else{
      left_arm_offset = centre_y;
      right_arm_offset = centre_y;
    }
    
    
    
  }
  int left_leg_offset = 45;
  int right_leg_offset = 45;

  //Head & Torso
  line(centre_x , (centre_y-(torso_height/2))+head_radius/2 , centre_x , (centre_y+(torso_height/2)));
  ellipse(centre_x , centre_y - (torso_height/2) , head_radius, head_radius);
  //Hands
  line(centre_x,centre_y,centre_x-arm_length,left_arm_offset);
  line(centre_x,centre_y,centre_x+arm_length,right_arm_offset);
  //Legs
  line(centre_x,centre_y+(torso_height-head_radius),centre_x-leg_length,(centre_y+(torso_height-head_radius))+left_leg_offset);
  line(centre_x,centre_y+(torso_height-head_radius),centre_x+leg_length,(centre_y+(torso_height-head_radius))+right_leg_offset);
}
