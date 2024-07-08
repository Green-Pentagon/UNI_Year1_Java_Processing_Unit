class Game{
  //TO DO:
  //- Add a finish line, which will stop a racer's car a set amount after it
  //- Add a menu which allows the user to:
  //  - Start a race game mode
  //  - Set the number of racers
  //  - Set Car outfits before race begins
  //  - Set Colour of every racer.
  //  - Set the number of rounds/races
  //- Create a regular race (vertical)
  //- Add a scoreboard at the end of every type of mode to show the leaderboard placements, as well as stats (eg losses.)
  //-----------------------------------------------
  private String mode;
  private boolean horizontal = false;
  private int player_count;
  private int player_seperation;//the distance between each player, as well as the left-most boundary of the canvas
  private Car players[];
  //-----------------------------------------------
  public Game(String mode, int player_count){
    this.mode = mode;
    this.player_count = player_count;
    player_seperation = 100;
    players = new Car[player_count];
    if (mode == "RACE_H"){ //<>//
      horizontal = true; //<>//
    }
  }
  //-----------------------------------------------
  public void SetOrientation(boolean is_horizontal){
    horizontal = is_horizontal;
  }
  public void SetPlayerSeperation(int seperation){
    player_seperation = seperation;
  }
  //-----------------------------------------------
  private void RandomizePlayerSpeeds(){
    for (int i = 0; i < player_count;i++){
      players[i].SetSpeed();
    }
  }
  public void LoadPlayers(int x, int y){
    //loads car class objects into the array, automatically spacing them out
    for (int i = 0; i < player_count;i++){
      if (horizontal) { //<>//
        players[i] = new Car(x,y + (player_seperation * i),horizontal); //<>//
      }else{ //<>//
        players[i] = new Car(x + (player_seperation * i),y,horizontal); //<>//
      }
    }
    RandomizePlayerSpeeds();
  }
  public void UpdatePlayers(){
    for (int i = 0; i < player_count;i++){ //<>//
      players[i].Update();
    }
  }
  //===============================================
}
