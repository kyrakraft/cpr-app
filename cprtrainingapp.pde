ArrayList<State> states;
int currentStateNumber = 0;




void settings()
{
  size(400,700);
}

void setup()
{
  states = new ArrayList<State>();
  states.add(new State0());
  states.add(new StateTrain());
}

void draw()
{
  states.get(currentStateNumber).display();
}

void mousePressed(){
  
 states.get(currentStateNumber).mousePressed();
 
  
}


void changeState()
{
   currentStateNumber++; 
}