class Game {
  int mode;
  int lives;
  double speed;
  double frequency;
  int points;
  PImage titleScreen;
  PImage gameScreen;

  ArrayList<Fruit> fruits;

  void setup() {
    size(800, 800);
    mode = 0;
    lives = 3;
    speed = 2.5;
    points = 0;
    frequency = 0.01;
    titleScreen = loadImage("loading_screen.png");
    gameScreen = loadImage("game_screen.png");
    fruits = new ArrayList<Fruit>();
  }

 

  void setLives(int l) {
    lives = l;
  }

  void setPoints(int p) {
    points = p;
  }

  void setMode(int m) {
    mode = m;
  }
}
