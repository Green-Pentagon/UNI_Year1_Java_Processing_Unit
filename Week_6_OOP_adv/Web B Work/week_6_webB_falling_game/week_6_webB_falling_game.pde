Player faller;
Obstacle rock;

void setup() {
  size(500, 500);
  faller = new Player();
  rock = new Obstacle();
}

void keyPressed() {
  if (key == CODED) {
    switch (keyCode) {
    case LEFT:
      faller.Move(-1, 0);
      break;
    case RIGHT:
      faller.Move(1, 0);
      break;
    }
  }
}


void draw() {
  background(200);
  faller.Render();
  if (rock != null) {
    rock.Move(0, 1);
    rock.Render();
    if (faller.HasCollided(rock.GetHurtbox())) {
      rock = null;
    }
  }
}
