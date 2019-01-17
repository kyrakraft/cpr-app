//ArrayList<State> states; //no
//int currentStateNumber = 0; //no

State0 state0;
StateTrain stateTrain;



State current;




void settings()
{
  size(400,700);
}

void setup()
{
  //states = new ArrayList<State>();
  //states.add(new State0());
  //states.add(new StateTrain());
  
  state0 = new State0();
  stateTrain = new StateTrain();
  current = state0;
}

void draw()
{
  //states.get(currentStateNumber).display();
  current.display();
}

void mousePressed()
{
  
 //states.get(currentStateNumber).mousePressed();
 current.mousePressed();
 
}

//change states using array list. not what we want
//void changeState()
//{
//   currentStateNumber++; 
//}

//change states


void nextState(String nextState) 
{
  if(current == state0){
    handleStateChange_State0(nextState);
  }
  
  if(current == stateTrain){
    handleStateChange_Training(nextState);
  }
  
 }
  





void handleStateChange_State0(nextState)
{
    if (nextState.equals("training"))
      current = stateTrain;
}

void handleStateChange_Training(nextState)
{
    if (nextState.equals("blah"))
      //current = some state;
}