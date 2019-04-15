class StateGetHelp extends State
{
   Button gotHelp = new Button(0, height*3/4, width, height/6, color(38, 8, 89), "NEXT", 15, color(241, 229, 199));

  public StateGetHelp()
  {
  }
  
  void display()  
  {
    
    background(241, 229, 199);
    fill(255);
    
    gotHelp.display();
    
    imageMode(CENTER);
    if (age == Age.ADULT){
      image(yellAdult, width/2, height/2);
    }
    
    else if (age == Age.CHILD){
      image(yellChild, width/2, height/2);
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
