abstract class State
{
  //put home button in corner of each state
  abstract void display();
 // abstract String stateName();
  
  //abstract void mousePressed();
  
  //abstract String stateName();
  
  void drawBackButtons(){
    
    back.display();
    //fill(100);
    //ellipse(15, 15, 20, 20);
  }
  
   public void mousePressed(){ //not abstract
       println("hi");
      if (back.clicked()){
        
        println("lksdjlfksd");
        
        previousState();
    }
    
    
   }
  

  Button back = new Button(15, 15, 30, 30, 200, "Back");
}