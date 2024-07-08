void setup(){
  size(500,500);
}

void Ex1(){
  //display ages 10 to 20
  //if x<13, display as child
  //if 12<x<20 display as teen
  //if x>19 display adult
  for (int age = 10;age <21;age++){
    print("age " + age + " is a ");
    if(age < 13){
       print("child \n");
    }else if (age < 20) {
       print("teen \n");
    }else{
       print("adult \n");
    }
  }
  print("\n\n");
}

void Ex2(){
  //Code debugging activity.
  float x=35,y=30;
  float diameter=60;



  for(int i = 0;i<5; i++){
  fill(0,0,255);
  ellipse(x,y, diameter, diameter);
  fill(255,255,255);
  ellipse(x,y, diameter*2/3,diameter*2/3);
  fill(255,0,0);
  ellipse(x,y, diameter/3, diameter/3);
  
  x=x+60;
  }
}

void Ex3(){
  //Fizz-Buzz
  //if x % 3 == 0, fizz
  //if x % 5 == 0, buzz
  //combinable
  int range = 30;
  String output;
  for (int count = 1; count<=range;count++){
    output = "";
    if (count % 3 == 0){
      output += "fizz";
    }
    if (count % 5 == 0){
      output += "buzz";
    }
    print("count = "+count +" - " + output + "\n");
  }
  
}


void draw(){
  //Ex1();
  Ex2();
  //Ex3();
}
