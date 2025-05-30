class Bomb{
 
  String pic = "bomb.png";
  String exp = "explosion.png";
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
  
  String destruct(){
    PImage b = loadImage(exp);
    if (mouseX >= x - (b.width / 2) && mouseX <= x + (b.width / 2) && mouseY >= y - (b.height / 2) && mouseY <= y + (b.height / 2)){
       image(b, x, y);
       return "Game Over!";
    }else{
      return "Whoo! You missed it!";
    }
  }
}
