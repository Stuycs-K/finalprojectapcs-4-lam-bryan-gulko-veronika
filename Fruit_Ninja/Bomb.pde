class Bomb{
 
  String pic = "bomb.png";
  int x;
  int y;
  
  public Bomb(){
    x = (int)Math.random() * displayWidth;
    y = 0;
  }
  
  void gravity(){
    y += (int)speed;
  }
  
  void visualizer(){
    gravity();
    PImage b = loadImage(pic);
    image(b, x, y);
  }
    
}
