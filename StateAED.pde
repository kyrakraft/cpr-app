class StateAED extends State
{
  public StateAED()
  {
  }
  
  
  void display()
  {

    background(255, 190, 190);
    fill(255);
    
    image(AED, 50, 100, 300, 300);

    
    drawBackButtons();
    
  //  image(conciousnessChild, 0,0, width,height/3);
  }
  
  void mousePressed()
  {
    super.mousePressed();
    
  }
}
