class Fruit{
  
  int[] name;
  String[] sliced;
  String[] full;
  int nameIndex;
  String current;
  boolean cut;
  int x;
  int y;
  
  public Fruit(){
     name = new int[]{0, 1, 2, 3, 4};
     sliced = new String[name.length];
     full = new String[name.length];
     nameIndex = (int)Math.random() * name.length;
     cut = false;
     current = full[nameIndex];
     x = (int)Math.random() * displayWidth;
     y = 0;
  }
  
  void display(){
    PImage f = loadImage(current);
    image(f, x, y);
  }
}
