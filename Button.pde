class Button
{
  
  float x;
  float y;
  float w;
  float h;
  color c;
  boolean clicked = false;
  
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
  
  void click(int nextState)
  {
    if((mouseX > x && mouseX < x + w) && (mouseY > y && mouseY < y + h))
    {
      clicked = true;
    }
  }
  
  
}