class Trash extends Fruit{
 
  int[] nameT = new int[]{0, 1, 2};
  String[] trash = new String[nameT.length];
  
  public Trash(){
    super();
    nameIndex = (int)Math.random() * nameT.length;
    current = trash[nameIndex];
  }
}
