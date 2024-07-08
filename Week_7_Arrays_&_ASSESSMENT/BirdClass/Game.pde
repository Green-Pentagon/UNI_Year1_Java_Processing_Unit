Plane player;
ArrayList<Bird> birds = new ArrayList<>();
PImage backGround;
int bgX = 0;
int birdCount = 5;

// variables to represent state of the game
final int PLAYING = 0;
final int FINISHED = 1;
int gameMode = PLAYING;

void setup() {
  size(800, 500);
  backGround = loadImage("skybg.jpg");
  backGround.resize(width, height);

  player = new Plane(height/2);
  for (int i = 1; i<=birdCount; i++) {
    birds.add(new Bird(850, (int)random(380)));
  }
}

void drawBG() {
  image(backGround, bgX, 0); //draw background twice
  image(backGround, bgX+backGround.width, 0);
  bgX -=4; //move background 4 pixels to left
  if (bgX == -backGround.width) {
    bgX=0; //wrap background
  }
}

void draw() {
  if (gameMode == PLAYING) {
    drawBG();

    player.render();
    //for (int i = 0; i<birds.size(); i++) {
    //  birds.get(i).update();
    //  if (player.crash(birds.get(i))) {
    //    gameMode = FINISHED;
    //  }
    //}
    
    for (Bird currentBird : birds) {
      currentBird.update();
      if (player.crash(currentBird)) {
        gameMode = FINISHED;
      }
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && player.y > 0) {
      player.y -= 5;
    } else if (keyCode == DOWN && player.y < height-125) {
      player.y += 5;
    }
  }
}
