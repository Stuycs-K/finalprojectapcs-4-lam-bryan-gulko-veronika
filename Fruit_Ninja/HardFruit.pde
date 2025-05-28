class HardFruit extends Fruit{
  
  String[] nameH = new String[]{"coconut", "watermelon", "dragon fruit"};
  String[] slicedH = new String[nameH.length];
  String[] wholeH = new String[nameH.length];
  int lives;
  
  public HardFruit(){
    super();
    nameIndex = (int)Math.random() * nameH.length;
    current = wholeH[nameIndex];
    lives = 2;
  }
}
