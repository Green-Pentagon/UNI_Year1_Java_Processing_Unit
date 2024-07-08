MyClass instance1, instance2;

void setup(){
  size(500,500);
  instance1 = new MyClass(50,50);
  instance2 = new MyClass(100,100);
  MyClass[] instances = {instance1, instance2};
  RenderObjects(instances);
}

void RenderObjects(MyClass[] objects){
  for (int i = 0; i < objects.length;i++){
    objects[i].render();
  }
}


class MyClass
{
  int x,y;
  
  MyClass(int x, int y)
  {
    this.x = x;
    this.y = y;
  } 
  
  void render()
  {
    ellipse(x,y, 20,20); 
  }
}
