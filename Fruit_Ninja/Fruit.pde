class Fruit{
  
  String[] name = new String[]{"kiwi", "orange", "banana", "pineapple", "apple"};
  String[] sliced = new String[]{"kiwi_sliced.png", "orange_sliced.png", "banana_sliced.png", "pineapple_sliced.png", "apple_sliced.png"};
  String[] full = new String[]{"kiwi.png", "orange.png", "Banana.png", "pineapple.png", "apple.png"};
  int nameIndex;
  String current;
  boolean cut;
  int x;
  int y;
  float speed;
  
  public Fruit(double s){
     nameIndex = (int)(Math.random() * name.length);
     cut = false;
     current = full[nameIndex];
     x = (int)(Math.random() * (displayWidth - 300) + 50);
     y = 0;
     speed = (float)s;
  }
  
  void visualizer(){
    gravity();
    PImage f = loadImage(current);
    image(f, x, y, 30, 30);
  }
  
  void gravity(){
    y += speed;
  }
  
  void trySlice(int mx, int my) {
    if (!cut) {
      int halfW = 15; 
      int halfH = 15;
      if (mx >= x - halfW && mx <= x + halfW && my >= y - halfH && my <= y + halfH) {
        cut = true;
        img = slicedImg;
      }
    }
  }
  
}
