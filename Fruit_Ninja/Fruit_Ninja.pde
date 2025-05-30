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
  titleScreen = loadImage("loading_screen.png");
  lives = 3;
  speed = 2.5;
  points = 0;
  frequency = 0.01;
  titleScreen = loadImage("loading_screen.png");
  gameScreen = loadImage("game_screen.png");
  fruits = new ArrayList<Fruit>();
}

void draw(){
  if (mode == 0) {
      image(titleScreen, 0, 0, width, height);
    } else if (mode == 1) {
      image(gameScreen, 0, 0, width, height);
    }
      if (random(1) < frequency) {
        fruits.add(new Fruit(speed));
      }

      for (int i = fruits.size() - 1; i >= 0; i--) {
        Fruit f = fruits.get(i);
        f.visualizer();
        f.checkSlice(mouseX, mouseY);
        if (f.y > height) {
          if (f.cut) {
            points += 5;
          } else {
            lives--;
          }
          fruits.remove(i);
        }
      }
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
