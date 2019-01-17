class StateEmergency extends State
{
 
  
  public StateEmergency(){
    
  }
  
  void display(){
    background(200);
    fill(255);
    ellipse(30, 30, 30, 30);
    text("emergency", 100, 100);
  
  }
  
  void mousePressed(){
  }
  
  String stateName(){
    return "StateEmergency";
  }
  
  
  
}