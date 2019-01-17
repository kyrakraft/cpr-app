class StateTrain extends State
{
 
  
  public StateTrain(){
    
  }
  
  void display(){
    background(200);
    fill(255);
    ellipse(30, 30, 30, 30);
    text("CPR Training", 100, 100);
  
  }
  
  void mousePressed(){
  }
  
  String stateName(){
    return "StateTrain";
  }
  
  
  
}