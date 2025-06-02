  int mode;
  int lives;
  double speed;
  double frequency;
  int points;
  PImage titleScreen;
  PImage gameScreen;
  int lastSpawnTime; 
  
  ArrayList<Fruit> fruits;

void setup() {
  size(800, 800);
  mode = 0;
  titleScreen = loadImage("loading_screen.png");
  lives = 3;
  speed = 10;
  points = 0;
  frequency = 1;
  titleScreen = loadImage("loading_screen.png");
  gameScreen = loadImage("game_screen.png");
  fruits = new ArrayList<Fruit>();
  lastSpawnTime = millis();
}

void mousePressed() {
  if (mode == 0) {
    setMode(1); // Start game
  } else if (mode == 1) {
    for (Fruit f : fruits) {
      f.trySlice(mouseX, mouseY);
    }
  }
}

void draw() {
  if (mode == 0) {
    image(titleScreen, 0, 0, width, height);
  } else if (mode == 1) {
  image(gameScreen, 0, 0, width, height);
  if (millis() - lastSpawnTime >= frequency * 1000) {
    if (Math.random() < 0.2) {  // 20% chance of being a bomb
       fruits.add(new FruitBomb(speed));
    } else {
      fruits.add(new Fruit(speed));
    }
    lastSpawnTime = millis();
    }
  for (int i = fruits.size() - 1; i >= 0; i--) {
    Fruit f = fruits.get(i);
    f.visualizer();
    f.trySlice(mouseX, mouseY);
    if (f.y > height) {
      if (!f.cut) {
        lives--;
      }else{
        points += 5;
      }
      fruits.remove(i);
    }
  }
     fill(0);
  textSize(24);
  text("Lives: " + lives, 20, 30);
  text("Points: " + points, 20, 60);
  if (lives <= 0) {
    text("Game Over!", width/2 - 60, height/2);
    noLoop(); 
  }
  }
}
 void setLives(int l) {
    lives = l;
    if (lives <= 0) {
    text("Game Over!", width/2 - 60, height/2);
    noLoop(); 
  }
  }

  void setPoints(int p) {
    points = p;
  }

  void setMode(int m) {
    mode = m;
  }
