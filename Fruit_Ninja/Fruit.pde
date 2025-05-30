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
    PImage f = loadImage(current);
    image(f, x, y);
    gravity();
  }
  
  void gravity(){
    y += (int)speed;
  }
  
  void points(){
    PImage f = loadImage(current);
    if (mouseX >= x - (f.width / 2) && mouseX <= x + (f.width / 2) && mouseY >= y - (f.height / 2) && mouseY <= y + (f.height / 2)){
      points += 5;
      current = sliced[nameIndex];
      cut = true;
    }
  }
  
}
