class StateCheckScene extends State
{
  
  
  public StateCheckScene()
  {
  }
  
  Button yes = new Button(width/2-width/6, height/2, width/3, height/6, color(100, 252, 100), "YES", 15);
  
  void display()
  {
    background(255, 190, 190);
    text("Have you checked to make sure the scene is safe?", width/2, 200);
    fill(255);
    
    //rectMode(CENTER);
    
    //rect(300, 300, 70, 70, 7);
    
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