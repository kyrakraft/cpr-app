AudioPlayer minimSound;
Minim minim;

SoundFile soundFile;


void initializeSound()
{
  soundFile = new SoundFile(this, "beep2.mp3");
  
  minim = new Minim(this);
  minimSound = minim.loadFile("beep2.mp3");
}

void playSound()
{
   soundFile.play();
}