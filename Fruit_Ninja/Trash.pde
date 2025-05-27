class Trash extends Fruit{
 
  int[] nameT = new int[]{0, 1, 2};
  String[] trash = new String[nameT.length];
  
  public Trash(){
    super();
    nameIndex = (int)Math.random() * nameT.length;
    current = trash[nameIndex];
  }
  
  void points(){
    points += 0;
  }
  
  void lives(){
    PImage f = loadImage(current);
    if (mouseX >= x - (f.width / 2) && mouseX <= x + (f.width / 2) && mouseY >= y - (f.height / 2) && mouseY <= y + (f.height / 2)){
      lives -= 1;
    }
  }
}
