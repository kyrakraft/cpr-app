class StateAED extends State
{
  public StateAED()
  {
  }
  
  
  void display()
  {

    background(241, 229, 199);
    fill(255);
    imageMode(CENTER);
    image(AED, width/2, height/2);
    
    drawBackButtons();
    
  //  image(conciousnessChild, 0,0, width,height/3);
  }
  
  void mousePressed()
  {
    super.mousePressed();
    
  }
}
