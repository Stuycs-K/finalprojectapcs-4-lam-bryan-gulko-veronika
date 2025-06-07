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

  
  public Fruit(double s){
     nameIndex = (int)(Math.random() * name.length);
     cut = false;
     fatal = true;
     current = full[nameIndex];
     currentImage = loadImage(current);
     // check these bounds
    x = (int)(Math.random() * (width - 60) + 30);
     y = 0;
     speed = (float)s;
  }
  
  void visualizer(){
    gravity();
    image(currentImage, x, y, 75, 75);
  }
  
  void gravity(){
    y += speed;
  }
  
  void trySlice(int mx, int my) {
    if (!cut) {
      int halfW = 38; 
      int halfH = 38;
      if (mx >= x - halfW && mx <= x + halfW && my >= y - halfH && my <= y + halfH){
        cut = true;
        fatal = false;
        current = sliced[nameIndex];
        currentImage = loadImage(current);
      }
    }
  }
  
}
