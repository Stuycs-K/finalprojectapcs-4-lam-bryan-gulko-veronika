class FruitBomb extends Fruit{
 
  String pic = "Bomb.png";
  String exp = "explosion.png";
  PImage explosionImg;
  
  public FruitBomb(double s){
    super(s);
    current = pic;
    currentImage = loadImage(current);
    explosionImg = loadImage(exp);
    fatal = false;
  }
  
  @Override
  void trySlice(int mx, int my) {
    int w = 38;
    int h = 38;
    if (mx >= x - w && mx <= x + w && my >= y - h && my <= y + h && !cut) {
      cut = true;
      currentImage = explosionImg;
      setMode(2);
    }
  }
}
