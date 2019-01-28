//ArrayList<State> states; //no
//int currentStateNumber = 0; //no


State0 state0;
StateEmergency stateEmergency;
StateEInfant stateEInfant;
StateEChild stateEChild;
StateEAdult stateEAdult;
StateTrain stateTrain;
StateTInfant stateTInfant;
StateTChild stateTChild;
StateTAdult stateTAdult;


ArrayList<State> visitedStates;

State current;




void settings()
{
  size(400,700);
}

void setup()
{
  state0 = new State0();
  stateTrain = new StateTrain();
  stateEmergency = new StateEmergency();
  stateEInfant = new StateEInfant();
  stateEChild = new StateEChild();
  stateEAdult = new StateEAdult();
  
  stateTInfant = new StateTInfant();
  stateTChild = new StateTChild();
  stateTAdult = new StateTAdult();
  
  visitedStates = new ArrayList<State>();
  //visitedStates.add(state0);
  
  current = state0;
}

void draw()
{
  current.display();
}

void mousePressed()
{
 current.mousePressed();
 
}

void homeState(){
  current = state0;
}

void previousState(){
   
  if (visitedStates.size()>0){
  current = visitedStates.get(visitedStates.size()-1);
  visitedStates.remove(visitedStates.size()-1);
  }
}

void nextState(String nextState) 
{
  visitedStates.add(current);
  //println(current);
  
  
  println("********");
  for (State s : visitedStates){
    println(s);
  }
  
  
  
  if(current == state0){
    handleStateChange_State0(nextState);
  }
  
  if(current == stateTrain){
    handleStateChange_StateTrain(nextState);
  }
  
   if(current == stateEmergency){
    handleStateChange_StateEmergency(nextState);
  }
  
  if(current == stateEInfant){
    handleStateChange_StateEInfant(nextState);
  }
  
}
  
void handleStateChange_State0(String nextState)
{
    
  
    if (nextState.equals("stateTrain"))
      current = stateTrain;
      
    if (nextState.equals("stateEmergency")){
      current = stateEmergency;
    }
    
    
}

void handleStateChange_StateTrain(String nextState)
{
   
    
    if (nextState.equals("stateTInfant")){
      current = stateTInfant;
    }
    
    if (nextState.equals("stateTChild")){
      current = stateTChild;
    }
    
    if (nextState.equals("stateTAdult")){
      current = stateTAdult;
    }
    
    //back
    //if (nextState.equals("state0")){
    //  current = state0;
    //}
    
   
}

void handleStateChange_StateEmergency(String nextState)
{
    
    if (nextState.equals("stateEInfant")){
      current = stateEInfant;
    }
    
    if (nextState.equals("stateEChild")){
      current = stateEChild;
    }
    
    if (nextState.equals("stateEAdult")){
      current = stateEAdult;
    }
    
    //back
    //if (nextState.equals("state0")){
    //  current = state0;
    //}
    
}

void handleStateChange_StateEInfant(String nextState)
{
    
    if (nextState.equals("stateEmergency")){
      current = stateEmergency;
    }
    
}