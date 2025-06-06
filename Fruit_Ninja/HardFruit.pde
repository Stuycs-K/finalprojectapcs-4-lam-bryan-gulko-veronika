class HardFruit extends Fruit{
  
  String[] nameH = new String[]{"coconut", "watermelon", "dragon fruit"};
  String[] slicedH = new String[]{"coconut_sliced.png", "watermelon_sliced.png", "dragon_sliced.png"};
  String[] wholeH = new String[]{"coconut.png", "watermelon.png", "dragon.png"};
  int fruitLife;
  
  public HardFruit(double s){
    super(s);
    nameIndex = (int)(Math.random() * nameH.length);
    current = wholeH[nameIndex];
    fruitLife = 2;
  }
  
  @Override
  void trySlice(int mx, int my) {
    int w = 38;
    int h = 38;
      if (mx >= position.x - w && mx <= position.x + w && my >= position.y - h && my <= position.y + h && !cut) {
      fruitLife -= 1;
      if (fruitLife == 0){
        current = slicedH[nameIndex];
        cut = true;
      }
    }
  }
  
}
