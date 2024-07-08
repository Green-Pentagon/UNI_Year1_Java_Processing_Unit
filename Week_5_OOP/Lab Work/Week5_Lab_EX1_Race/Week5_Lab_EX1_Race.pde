Game game = new Game("RACE_V", 5);


void setup(){
  imageMode(CENTER);
  size(500,500);
  game.LoadPlayers(50,50);
  
}

void draw(){
  background(200);
  game.UpdatePlayers();
}
