class Trash extends Fruit{
 
  String[] nameT = new String[]{"bags", "water bottle"};
  String[] trash = new String[]{"trash.png", "bottle.png"};
  
  public Trash(double s){
    super(s);
    nameIndex = (int)(Math.random() * nameT.length);
    current = trash[nameIndex];
    currentImage = loadImage(current);
    fatal = false;
  }
  
  @Override
  void trySlice(int mx, int my){
    int w = 50;
    int h = 50;
    if (mx >= position.x - w && mx <= position.x + w && my >= position.y - h && my <= position.y + h){
      fatal = true;
    }
  }
}
