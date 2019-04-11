class StateCheckScene extends State
{
  
  
  public StateCheckScene()
  {
  }
  
  Button yes = new Button(width/2-width/6, height/2, width/3, height/6, color(38, 8, 89), "YES", 15, color(241, 229, 199));
  
  void display()
  {
    background(241, 229, 199);
    textSize(15);
    fill(0);
    text("Have you checked to make" + "\n" + "sure the scene is safe?", width/2, height*2/7);
    fill(255);
    textSize(12);
 
    yes.display();
    
    //rectMode(CORNER);
    drawBackButtons();
  }
  
  void mousePressed()
  {
    super.mousePressed();
    
    if (yes.clicked())
          nextState("stateCheckResponsive");
  }
}