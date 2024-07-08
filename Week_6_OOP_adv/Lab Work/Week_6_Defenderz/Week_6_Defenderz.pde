//TO DO:
//- IMPLEMENT INHERITANCE OR COMPOSITION MODEL

//------------------------------------------------------------------------------------------
PImage background;
int bgX=0; //global variable background location
Player Defender;
Alien enemy1;
//------------------------------------------------------------------------------------------
void setup() {
  size(800, 400);
  background = loadImage("spaceBackground.jpg");
  background.resize(width, height); //set image to be same size as the canvas
  Defender = new Player(width/2, height/2, "player.png");
  enemy1 = new Alien(50,50,"alien.png");
}

void keyPressed() {
  float[] move_vector = {0, 0};

  if (key == CODED) {
    switch (keyCode) {
    case UP:
      move_vector[1] -= 1;
      break;
    case DOWN:
      move_vector[1] += 1;
      break;
    case LEFT:
      move_vector[0] -= 1;
      break;
    case RIGHT:
      move_vector[0] += 1; //<>//
      break; //<>//
    }
  }
  Defender.Move(move_vector); //<>//
}

void draw() {
  drawBG();
  Defender.Render();
  enemy1.Move();
  enemy1.Render();
  
}
//------------------------------------------------------------------------------------------
void drawBG() {
  //scrolling background image
  image(background, bgX, 0); //draw image to fill the canvas
  //draw image again off the right of the canvas
  image(background, bgX+background.width, 0);
  bgX = bgX- 4;
  if (bgX == -background.width) //if first image completely off the canvas
  {
    bgX=0; //reset back to initial value background
  }
}
//------------------------------------------------------------------------------------------
