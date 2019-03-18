class StateGetHelp extends State
{
   Button gotHelp = new Button(0, height*3/4, width, height/6, color(100, 252, 100), "NEXT", 15);

  public StateGetHelp()
  {
  }
  
  void display()  
  {
    
    background(255, 190, 190);
    fill(255);
    
    gotHelp.display();
    
    
    if (age == Age.ADULT){
      image(yellAdult, width/8, height*2/7, 300, 300);
    }
    
    else if (age == Age.CHILD){
      image(yellChild, width/8, height*2/7, 300, 300);
    }
        
    drawBackButtons();
    
  }
  
  void mousePressed()
  {
    super.mousePressed();
    
    if(gotHelp.clicked())
      nextState("stateCompressions");

  }
}