class StateCheckScene extends State
{
  
  
  public StateCheckScene()
  {
  }
  
  Button yes = new Button(width/2-width/6, height/2, width/3, height/6, color(100, 252, 100), "YES", 15);
  
  void display()
  {
    background(255, 190, 190);
    textSize(15);
    text("Have you checked to make" + "\n" + "sure the scene is safe?", width/2, 200);
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