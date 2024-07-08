//spooky globals!!! (nearing halloween so appropriate)
float player_x = 50;
float player_y = 50;
float coin_x = 200;
float coin_y = 200;
float coin_size = 10;
float player_speed = 20;
float player_size = 20;
int score = 0;
//========================================================================================
void setup() {
  size(500,500);
  rectMode(CENTER);
  textSize(20);
}
//----------------------------------------------------------------------------------------
void draw(){
  background(0);
  Player(player_x,player_y, player_size);
  Coin(coin_x,coin_y, coin_size);
  fill(255,0,0);
  text("Score: " + str(score) , width/2,50);
  fill(255);
  
  //collision check
  if ((player_x >= coin_x-(player_size/2) && player_x <= coin_x+(player_size/2)) && (player_y >= coin_y-(player_size/2) && player_y <= coin_y+(player_size/2)) ){
    score += 1;
    println("HIT! Score: " + str(score));
    //optional changes to player
    player_size += 5;
    if (player_speed > 1){
      player_speed -= 1;
    }
    //move coin to random place
    coin_x = random(50,width-50);
    coin_y = random(50,height-50);
  }
}
//----------------------------------------------------------------------------------------
void keyPressed(){
  //control player movement
  if (key == CODED){
    switch (keyCode){
      case UP:
        player_y -= player_speed;
        break;
      case DOWN:
        player_y += player_speed;
        break;
      case LEFT:
        player_x -= player_speed;
        break;
      case RIGHT:
        player_x += player_speed;
        break;
    }
  }
}
//========================================================================================
void Player(float x, float y, float size){
  rect(x,y,size,size);
}
//----------------------------------------------------------------------------------------
void Coin(float x, float y, float size){
  ellipse(x,y,size,size);
}
