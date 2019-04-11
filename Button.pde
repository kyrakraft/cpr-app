class Button
{
  float x;
  float y;
  float w;
  float h;
  color c;
  String name;
  int round;
  color f;
  
  public Button(float x, float y, float w, float h, color c, String s, int r)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.name = s;
    round = r; 
  }
  
    public Button(float x, float y, float w, float h, color c, String s, int r, color f)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.name = s;
    round = r; 
    this.f = f;
  }
  
  void display()
  {
    if (clicked())
    {
      
      strokeWeight(w/50);
      stroke(255);
      fill(c);
    }
    else
    {
      fill(c);
      strokeWeight(w/20);
      stroke(255);
    }
    rect(x, y, w, h, round);
    
    fill(0);
    stroke(0);
    fill(f);
    textAlign(CENTER, CENTER);
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