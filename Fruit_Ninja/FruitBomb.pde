class FruitBomb extends Fruit{
 
  String pic = "Bomb.png";
  String exp = "explosion.png";
  PImage explosionImg;
  
  public FruitBomb(double s){
    super(s);
    current = pic;
    currentImage = loadImage(current);
    explosionImg = loadImage(exp);
  }
  
  @Override
  void trySlice(int mx, int my) {
    int w = 38;
    int h = 38;
      if (mx >= position.x - w && mx <= position.x + w && my >= position.y - h && my <= position.y + h) {
      cut = true;
      currentImage = explosionImg;
      setMode(2);
    }
  }
}
