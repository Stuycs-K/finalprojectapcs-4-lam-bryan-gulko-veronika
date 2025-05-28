class Fruit{
  
  String[] name = new String[]{"kiwi", "orange", "banana", "pineapple", "apple"};
  String[] sliced = new String[name.length];
  String[] full = new String[name.length];
  int nameIndex;
  String current;
  boolean cut;
  int x;
  int y;
  
  public Fruit(){
     nameIndex = (int)Math.random() * name.length;
     cut = false;
     current = full[nameIndex];
     x = (int)Math.random() * displayWidth;
     y = 0;
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
