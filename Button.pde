class Button
{
  float x;
  float y;
  float w;
  float h;
  color c;
  String name;
  
  public Button(float x, float y, float w, float h, color c, String s)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.name = s;
  }
  
  void display()
  {
    if (clicked())
      fill(255);
    else
      fill(c);
    rect(x, y, w, h);
    
    fill(0);
    stroke(0);
    textAlign(CENTER);
    text(name, x+w/2, y+h/2);
    
  }
  
 
  
  boolean clicked()
  {
    boolean clicked; 
    if((mouseX > this.x && mouseX < this.x + this.w) && (mouseY > this.y && mouseY < this.y + this.h))
    {
       clicked = true;
    }
    else clicked = false;
    
    return clicked;
  }
  
  
}