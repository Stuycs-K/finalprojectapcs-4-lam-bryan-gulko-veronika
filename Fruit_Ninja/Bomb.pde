class Bomb{
 
  String pic = "bomb.png";
  int x;
  int y;
  
  public Bomb(){
    x = (int)Math.random() * displayWidth;
    y = 0;
  }
}
