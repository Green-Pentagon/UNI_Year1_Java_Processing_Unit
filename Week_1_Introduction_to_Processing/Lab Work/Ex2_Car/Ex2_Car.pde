size(300,300);

//say the centre of the car should be the centre of the screen
//let's have the car's body be += 25 px from centre, 50px high
//and have the body 300px long
//then, the windows of the car can be 50px wide and say, 40px high?

//GLOBALS
size(500,500);
int centre_x = 250;
int centre_y = 250;

//CAR BODY
int car_body_width = 200;
int car_body_height = 80;

rect(centre_x-(car_body_width/2),centre_y-(car_body_height/2) , car_body_width , car_body_height);

//CAR WINDOW
int car_window_width = 50;
int car_window_height = 40;

rect(centre_x-(car_window_width),centre_y-(car_window_height*2) , car_window_width, car_window_height);
rect(centre_x,centre_y-(car_window_height*2) , car_window_width, car_window_height);

//CAR WHEELS & LIGHT
int wheel_radius = 50;
int wheel_offset = 50;
ellipse(centre_x - 50 , centre_y + car_body_height/2 , wheel_radius , wheel_radius);
ellipse(centre_x + 50 , centre_y + car_body_height/2 , wheel_radius , wheel_radius);
ellipse(centre_x + car_body_width/2 , centre_y-car_body_height/4 , 20 , 20);
