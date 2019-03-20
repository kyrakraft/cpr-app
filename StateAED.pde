class StateAED extends State
{
  public StateAED()
  {
  }
  
  
  void display()
  {

    background(255, 190, 190);
    fill(255);
    imageMode(CENTER);
    image(AED, width/2, height/2, width*3/4, height*3/7);

    
    drawBackButtons();
    
  //  image(conciousnessChild, 0,0, width,height/3);
  }
  
  void mousePressed()
  {
    super.mousePressed();
    
  }
}