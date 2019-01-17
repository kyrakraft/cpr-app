ArrayList<State> states;
int currentState = 0;


void settings()
{
  size(400,700);
}

void setup()
{
  states = new ArrayList<State>();
  states.add(new State0());
}

void draw()
{
  states.get(currentState).display();
  
}