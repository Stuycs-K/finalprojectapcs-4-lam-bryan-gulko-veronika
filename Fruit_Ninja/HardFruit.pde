class HardFruit extends Fruit{
  
  String[] nameH = new String[]{"coconut", "watermelon", "dragon fruit"};
  String[] slicedH = new String[nameH.length];
  String[] wholeH = new String[]{"coconut.png", "watermelon.png", "dragon.png"};
  int fruitLife;
  
  public HardFruit(double s){
    super(s);
    nameIndex = (int)Math.random() * nameH.length;
    current = wholeH[nameIndex];
    fruitLife = 2;
  }
  
  void checkSlice(){
    PImage f = loadImage(current);
    int w = f.width / 2;
    int h = f.height / 2;
    if (mouseX >= x - w && mouseX <= x + w && mouseY >= y - h && mouseY <= y + h && mousePressed){
      fruitLife -= 1;
      if (fruitLife == 0){
        current = slicedH[nameIndex];
        cut = true;
      }
    }
  }
}
