class HardFruit extends Fruit{
  
  String[] nameH = new String[]{"coconut", "watermelon", "dragon fruit"};
  String[] slicedH = new String[nameH.length];
  String[] wholeH = new String[nameH.length];
  int fruitLife;
  
  public HardFruit(){
    super();
    nameIndex = (int)Math.random() * nameH.length;
    current = wholeH[nameIndex];
    fruitLife = 2;
  }
  
  void points(){
    PImage f = loadImage(current);
    if (mouseX >= x - (f.width / 2) && mouseX <= x + (f.width / 2) && mouseY >= y - (f.height / 2) && mouseY <= y + (f.height / 2)){
      fruitLife -= 1;
      if (fruitLife == 0){
        current = slicedH[nameIndex];
        points += 10;
        cut = true;
      }
    }
  }
}
