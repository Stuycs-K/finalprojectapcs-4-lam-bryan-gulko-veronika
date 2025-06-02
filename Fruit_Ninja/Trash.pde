class Trash extends Fruit{
 
  String[] nameT = new String[]{"bags", "water bottle"};
  String[] trash = new String[]{"trash.png", "bottle.png"};
  boolean fatal;
  
  public Trash(double s){
    super(s);
    nameIndex = (int)(Math.random() * nameT.length);
    current = trash[nameIndex];
    currentImage = loadImage(current);
    fatal = false;
  }
  
  @Override
  void trySlice(int mx, int my){
    int w = 38;
    int h = 38;
    if (mx >= x - w && mx <= x + w && my >= y - h && my <= y + w){
      fatal = true;
    }
  }
}
