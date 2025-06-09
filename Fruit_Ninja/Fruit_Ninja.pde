int mode;
int lives;
double speed;
double frequency;
int points;
Fruit center;
PImage titleScreen;
PImage deadScreen;
PImage gameScreen;
PImage heart;

int lastSpawnTime;
ArrayList<Fruit> fruits;

void setup() {
  size(800, 800);
    center = new Fruit((int)width/2, height + 100000);

  
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
  if (mode == 0 && frequency > 0 && speed > 0) {
    setMode(1); // Start game
  } else if (mode == 1) {
    for (Fruit f : fruits) {
      f.trySlice(mouseX, mouseY);
    }
    if (mouseX >= width - 30 && mouseY <= 30){
      setMode(0);
    }
  }
}

void keyPressed(){
  if (mode == 0){
    if (key >= 'A' && key <= 'M'){
      frequency += 0.2;
    }
    else if (key >= 'N' && key <= 'Z'){
      frequency -= 0.2;
    }
  }
}



void draw() {
  if (mode == 0) {
    image(titleScreen, 0, 0, width, height);
    textSize(40);
    fill(#6c4c25);
    text((Math.round(frequency * 100) / 100.0), 510, 440);
  } 
  
  
  else if (mode == 1) {
  image(gameScreen, 0, 0, width, height);
  center.visualizer();
  if (millis() - lastSpawnTime >= frequency * 1000) {
    if (Math.random() < 0.2) {  // 20% chance of being a bomb
       fruits.add(new FruitBomb(speed));
     }
    else if (Math.random() < 0.5){
      fruits.add(new HardFruit(speed));
    }
    else if (Math.random() < 0.6){
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
    f.applyForce(f.attractTo(center));
    f.trySlice(mouseX, mouseY);
    stroke(255, 255, 255);
    strokeWeight(12);
    line(mouseX, mouseY, pmouseX, pmouseY);
    if (f.position.y > height) {
      if (!f.cut && f.fatal) {
        lives--;
      }
      fruits.remove(i);
    }
  }
  for(int i = 0; i < lives; i++){
     image(heart, 20 + (i * 40), 30, 40, 40);
  }
     fill(0);
  textSize(24);
  fill(255, 255, 255);
  text("Points: " + points, 150, 60);
  text("Frequency: " + (Math.round(frequency * 100) / 100.0), 450, 60);
  if (lives <= 0){
    setMode(2);
    image(deadScreen, 0,0, width, height);
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
      setMode(2);
      image(deadScreen, 0,0, width, height);
    }
  }

  void setPoints(int p) {
    points = p;
  }

  void setMode(int m) {
    mode = m;
  }
