class Fruit{
  
  String[] name = new String[]{"kiwi", "orange", "banana", "pineapple", "apple"};
  String[] sliced = new String[]{"kiwi_sliced.png", "orange_sliced.png", "banana_sliced.png", "pineapple_sliced.png", "apple_sliced.png"};
  String[] full = new String[]{"kiwi.png", "orange.png", "Banana.png", "pineapple.png", "apple.png"};
  int nameIndex;
  String current;
  boolean cut;
  boolean fatal;
  int x;
  int y;
  float speed;
  PImage currentImage;
  boolean bomb_cut;
  int mass;
  PVector position, velocity, acceleration;
  double G = 200;

  
  public Fruit(double s){
     nameIndex = (int)(Math.random() * name.length);
     cut = false;
     fatal = true;
     current = full[nameIndex];
     currentImage = loadImage(current);
     // check these bounds
    x = 0;
     y = Math.min((int)(Math.random() * (height - 60) + 30), height/2 - 200);
     speed = (float)s;
    mass = 100;     
     boolean fromLeft = Math.random() < 0.5;
    if (fromLeft) {
      position = new PVector(0, height);
      velocity = new PVector((float)(Math.random() * 4 + 2), (float)(-Math.random() * 8 - 4)); // right and upward
    } else {
      position = new PVector(width, height);
      velocity = new PVector((float)(-Math.random() * 4 - 2), (float)(-Math.random() * 8 - 4)); // left and upward
    }
      acceleration = new PVector(0, 0);
    }
  

   public Fruit(int x, int y) {
    position = new PVector(x, y);
    nameIndex = (int)(Math.random() * name.length);
    mass = 100;
    current = full[nameIndex];
    currentImage = loadImage(current);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
   PVector attractTo(Fruit other) {
    float distance = PVector.sub(other.position, position).mag();
    distance = max(15.0, distance);
    float mag = (float)(G * mass * other.mass) / (distance * distance);
    PVector force = PVector.sub(other.position, position);
    force.normalize();
     force.mult(mag);
    return force;
  }
  
   void applyForce(PVector f) {
      PVector acc = PVector.div(f, mass);
      acceleration.add(acc);
  }
  
  void move(){
    PVector gravity = new PVector(0, 0.2); 
    applyForce(gravity);
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  
  void visualizer(){
    image(currentImage, position.x, position.y, 100, 100);
  }
  
>>>>>>> Veronika
  
  void trySlice(int mx, int my) {
    if (!cut) {
      int halfW = 50; 
      int halfH = 50;
      if (mx >= position.x - halfW && mx <= position.x + halfW && my >= position.y - halfH && my <= position.y + halfH) {
        cut = true;
        fatal = false;
        current = sliced[nameIndex];
        currentImage = loadImage(current);
      }
    }
  }
  
}
