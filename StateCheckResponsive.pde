class StateCheckResponsive extends State
{
  public StateCheckResponsive()
  {
  }
  
   Button yesResponsive = new Button(0, height*3/4, width/2, height/6, color(100, 252, 100), "YES", 15);
   Button noResponsive = new Button(width*1/2, height*3/4, width/2, height/6,color(255, 80, 80), "NO", 15);

  
  void display()
  {

    background(255, 190, 190);
    fill(0);
    
    textSize(25);
    text("Is the victim responsive?", width/2, 150);
    
    textSize(12);
    
    yesResponsive.display();
    noResponsive.display();
    
    imageMode(CENTER);
    
    if (age == Age.ADULT){
      image(conciousnessAdult, width/2, height/2, width/4, width/4);
    }
    
    else if (age == Age.CHILD){
      image(conciousnessChild, width/2, height/2, width/4, width/4);
    }
        
    drawBackButtons();
    
  //  image(conciousnessChild, 0,0, width,height/3);
  }
  
  void mousePressed()
  {
    super.mousePressed();
    
        
    if (noResponsive.clicked())
          nextState("stateGetHelp");
    else if(yesResponsive.clicked())
          nextState("stateNoCPR");
  }
}