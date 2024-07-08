ArrayList<Animal> animals = new ArrayList<>();

void setup() {
  size(600, 800);

  animals.add( new Owl( random(0, 500), 650 ) );
  animals.add( new Ostrich( random(0, 500), 650 ) );
  animals.add( new Pig( random(0, 500), 750 ) );
}

void draw() {
  background(255);
  
  for (int i = animals.size()-1; i >= 0; i--) {
    Animal currentAnimal = animals.get(i);
    if (currentAnimal instanceof Flying){
      Flying can_fly = (Flying)currentAnimal;//casts class to ensure Java stops whining
      can_fly.fly();
      can_fly = null;
    }
    currentAnimal.update();
  }
}
