int points;
double frequency;
double speed;
int lives;
int mode;
boolean gameOn;
ArrayList<Fruit> f;
ArrayList<Trash> t;
ArrayList<Bomb> b;

void setup(){
  size(900, 900);
  gameOn = true;
  speed = 6;
  points = 0;
  f = new ArrayList<Fruit>();
  t = new ArrayList<Trash>();
  b = new ArrayList<Bomb>();
}

void mouseClicked(){
  for (Fruit a: f){
    a.points();
  }
  for (Trash s: t){
    t.lives();
  }
  for (Bomb o: b){
    if (o.destruct().equals("Game Over!")){
      gameOn = false;
    }
  }
}

void draw(){
  while(gameOn){
    int n = (int)Math.random() * 1000;
    if (n % 2 == 0){
      if (n % 4 == 0){
        HardFruit h = new HardFruit();
        f.add(h);
      }else{
        Fruit fr = new Fruit();
        f.add(fr);
      }
    }else{
      if (n % 3 == 0){
          Bomb bo = new Bomb();
          b.add(bo);
      }else{
        Trash tr = new Trash();
        t.add(tr);
      }
    }
  }
        
  
