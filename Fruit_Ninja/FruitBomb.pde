class FruitBomb extends Fruit{
 
  String pic = "bomb.png";
  String exp = "explosion.png";
  
  public FruitBomb(double s){
    super(s);
    current = pic;
  }
  
  String destruct(){
    PImage b = loadImage(exp);
    if (mouseX >= x - (b.width / 2) && mouseX <= x + (b.width / 2) && mouseY >= y - (b.height / 2) && mouseY <= y + (b.height / 2) && mousePressed){
       image(b, x, y);
       return "Game Over!";
    }else{
      return "Whoo! You missed it!";
    }
  }
}
