class Fruit{
  
  String[] name = new String[]{"kiwi", "orange", "banana", "pineapple", "apple"};
  String[] sliced = new String[]{"kiwi_sliced.png", "orange_sliced.png", "banana_sliced.png", "pineapple_sliced.png", "apple_sliced.png"};
  String[] full = new String[]{"kiwi.png", "orange.png", "banana.png", "pineapple.png", "apple.png"};
  int nameIndex;
  String current;
  boolean cut;
  int x;
  int y;
  float speed;
  
  public Fruit(double s){
     nameIndex = (int)Math.random() * name.length;
     cut = false;
     current = full[nameIndex];
     x = (int)Math.random() * (displayWidth - 100) + 100;
     y = 0;
     speed = (float)s;
  }
  
  void visualizer(){
    gravity();
    PImage f = loadImage(current);
    image(f, x, y);
  }
  
  void gravity(){
    y += speed;
  }
  
  void checkSlice(){
    if (!cut){
    PImage f = loadImage(current);
    int w = f.width / 2;
    int h = f.height / 2;
    if (mouseX >= x - w && mouseX <= x + w && mouseY >= y - h && mouseY <= y + h && mousePressed){
      current = sliced[nameIndex];
      cut = true;
    }
  }
  }
  
}
