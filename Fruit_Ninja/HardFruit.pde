class HardFruit extends Fruit{
  
  String[] nameH = new String[]{"coconut", "watermelon", "dragon fruit"};
  String[] slicedH = new String[]{"coconut_sliced.png", "watermelon_sliced.png", "dragon_sliced.png"};
  String[] wholeH = new String[]{"coconut.png", "watermelon.png", "dragon.png"};
  int fruitLife;
  
  public HardFruit(double s){
    super(s);
    nameIndex = (int)(Math.random() * nameH.length);
    current = wholeH[nameIndex];
    currentImage = loadImage(current);
    fruitLife = 2;
  }
  
  @Override
  void trySlice(int mx, int my) {
    int w = 38;
    int h = 38;
    if (mx >= x - w && mx <= x + w && my >= y - h && my <= y + h && !cut) {
      fruitLife -= 1;
      if (fruitLife == 0){
        current = slicedH[nameIndex];
        currentImage = loadImage(current);
        cut = true;
        fatal = false;
      }
    }
  }
  
}
