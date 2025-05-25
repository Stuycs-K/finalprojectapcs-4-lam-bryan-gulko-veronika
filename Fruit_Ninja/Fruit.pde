class Fruit{
  
  int[] name;
  String[] sliced;
  String[] full;
  int nameIndex;
  String current;
  int x;
  int y;
  
  public Fruit(){
     name = new int[]{0, 1, 2, 3, 4};
     sliced = new String[name.length];
     full = new String[name.length];
     nameIndex = (int)Math.random() * name.length;
     current = full[nameIndex];
     x = (int)Math.random() * displayWidth;
     y = 0;
  }
}
