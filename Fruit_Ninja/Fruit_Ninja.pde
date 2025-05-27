class Game{
  int mode;
  int lives;
  double speed;
  double frequency;
  int points;
  
void setup() {
  size(800, 600);
  mode = 0;
  titleScreen = loadImage("loading_screen.png");
  // gameScreen = loadImage("game.png");
}

void draw() {
  if (mode == 0) {
    image(titleScreen, 0, 0, width, height);
  //} else if (mode  == 1) {
    // image(gameScreen, 0, 0, width, height);
    // or draw game logic here
  }
