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
    
    imageMode(CENTER);
    if (age == Age.ADULT){
      image(yellAdult, width/2, height/2, width*3/4, height*3/7);
    }
    
    else if (age == Age.CHILD){
      image(yellChild, width/2, height/2, width*3/4, height*3/7);
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