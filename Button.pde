class Button
{
  
  float x;
  float y;
  float w;
  float h;
  color c;
  
  public Button(float x, float y, float w, float h, color c)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    
  }
  
  void display()
  {
    fill(c);
    rect(x, y, w, h);
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