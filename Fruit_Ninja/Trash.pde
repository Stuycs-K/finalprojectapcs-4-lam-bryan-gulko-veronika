class Trash extends Fruit{
 
  String[] nameT = new String[]{"bags", "water bottle"};
  String[] trash = new String[]{"bag.png", "bottle.png"};
  boolean fatal;
  
  public Trash(double s){
    super(s);
    nameIndex = (int)(Math.random() * nameT.length);
    current = trash[nameIndex];
    fatal = false;
  }
  
  boolean lives(){
    PImage f = loadImage(current);
    int w = f.width / 2;
    int h = f.width / 2;
    if (mouseX >= x - w && mouseX <= x + w && mouseY >= y - h && mouseY <= y + w && mousePressed){
      fatal = true;
    }
    return fatal;
  }
}
