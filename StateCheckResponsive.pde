class StateCheckResponsive extends State
{
  public StateCheckResponsive()
  {
  }
  
  void display()
  {
    background(255, 190, 190);
    fill(255);
    
    
    if (age == Age.ADULT){
      image(yellAdult, 50, 100, 300, 300);
    }
    
    else if (age == Age.CHILD){
      image(yellChild, 50, 200, 300, 300);
    }
    
    text("age: " + age, 50, 500);
    
    drawBackButtons();
    
  //  image(conciousnessChild, 0,0, width,height/3);
  }
  
  void mousePressed()
  {
    super.mousePressed();
  }
}
