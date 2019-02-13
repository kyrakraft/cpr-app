class StateCheckResponsive extends State
{
  public StateCheckResponsive()
  {
  }
  
   Button yesResponsive = new Button(width/2, 600, width/3, height/2, color(0), "YES", 15);
   Button noResponsive = new Button(width/4, height/4, width/3, height/2, color(0), "NO", 15);

  
  void display()
  {
    
    yesResponsive.display();
    noResponsive.display();

    background(255, 190, 190);
    fill(255);
    
    
    if (age == Age.ADULT){
      image(conciousnessAdult, 50, 100, 300, 300);
    }
    
    else if (age == Age.CHILD){
      image(conciousnessChild, 50, 200, 300, 300);
    }
    
    text("age: " + age, 50, 500);
    
    drawBackButtons();
    
  //  image(conciousnessChild, 0,0, width,height/3);
  }
  
  void mousePressed()
  {
    super.mousePressed();
    
        
    if (noResponsive.clicked())
          nextState("stateGetHelp");
  }
}
