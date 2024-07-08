void setup(){
  size(500,500);
}

void Ex1(){
  //three circles representing traffic light
  float centre_x = 100;
  float centre_y = 100;
  float radius = 50;
  fill(255,0,0);
  ellipse(centre_x,centre_y,radius,radius);
  fill(255,255,0);
  ellipse(centre_x,centre_y+50,radius,radius);
  fill(0,255,0);
  ellipse(centre_x,centre_y+100,radius,radius);
}

void Ex2(){
  //A triangle with circles in the corners
  float centre_x = width/2;
  float centre_y = height/2;
  float side_length = 100;
  float circle_radius = 25;
  
  line(centre_x,centre_y-(side_length/2) , centre_x-(side_length/2) , centre_y+(side_length/2));
  line(centre_x,centre_y-(side_length/2) , centre_x+(side_length/2) , centre_y+(side_length/2));
  line(centre_x+(side_length/2) , centre_y+(side_length/2) , centre_x-(side_length/2) , centre_y+(side_length/2) );
  
  fill(255);
  
  ellipse(centre_x,centre_y-(side_length/2), circle_radius , circle_radius);
  ellipse(centre_x+(side_length/2) , centre_y+(side_length/2) , circle_radius , circle_radius);
  ellipse(centre_x-(side_length/2) , centre_y+(side_length/2) , circle_radius , circle_radius);
}

void draw(){
  //Ex1();
  Ex2();
}
