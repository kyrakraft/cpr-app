//ArrayList<State> states; //no
//int currentStateNumber = 0; //no

State0 state0;
StateTrain stateTrain;
StateEmergency stateEmergency;



State current;




void settings()
{
  size(400,700);
}

void setup()
{
  state0 = new State0();
  stateTrain = new StateTrain();
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


void nextState(String nextState) 
{
  if(current == state0){
    handleStateChange_State0(nextState);
  }
  
  if(current == stateTrain){
    handleStateChange_StateTrain(nextState);
  }
  
   if(current == stateEmergency){
    handleStateChange_StateEmergency(nextState);
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
    if (nextState.equals("blah")){
      //current = some state;
    }
}

void handleStateChange_StateEmergency(String nextState)
{
    
}