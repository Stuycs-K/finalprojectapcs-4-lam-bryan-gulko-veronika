int mode;
int lives;
double speed;
double frequency;
int points;

PImage titleScreen;
PImage deadScreen;
PImage gameScreen;
PImage heart;

int lastSpawnTime;
ArrayList<Fruit> fruits;

void setup() {
  size(800, 800);
  mode = 0;
  titleScreen = loadImage("loading_screen.png");
  lives = 3;
  speed = 1;
  points = 0;
  frequency = 1;
  titleScreen = loadImage("loading_screen.png");
  gameScreen = loadImage("game_screen.png");
  deadScreen = loadImage("dead_screen.png");
  heart = loadImage("heart.png");
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
    }
    else if (Math.random() < 0.3){
      fruits.add(new HardFruit(speed));}
    else if (Math.random() < 0.4){
      fruits.add(new Trash(speed));
    }
    else {
      fruits.add(new Fruit(speed));
    }
    lastSpawnTime = millis();
    }
  for (int i = fruits.size() - 1; i >= 0; i--) {
    Fruit f = fruits.get(i);
    f.move();
    f.visualizer();
    //f.applyForce(f.attractTo(center));
    f.trySlice(mouseX, mouseY);
    stroke(255, 255, 255);
    strokeWeight(12);
    line(mouseX, mouseY, pmouseX, pmouseY);
    if (f.y > height) {
      if (!f.cut && f.fatal){
        lives--;
      }else{
        points += 5;
      }
      fruits.remove(i);
    }
  }
  for(int i = 0; i < lives; i++){
     image(heart, 20 + (i * 40), 30, 40, 40);
  }
     fill(0);
  textSize(24);
  text("Points: " + points, 20, 60);
  if (lives <= 0) {
    text("Game Over!", width/2 - 60, height/2);
    noLoop();
  }
  }
  else if(mode == 2){
    image(deadScreen, 0,0, width, height);
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
