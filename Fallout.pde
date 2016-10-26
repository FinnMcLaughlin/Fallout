//width: 1366 height:768
void setup()
{
  fullScreen();
  background(0,51,20,40);
  for(int i=0; i < height; i+=10)
  {
    stroke(0,50);
    line(0, i, width, i);
  }
  
  Start_Up1=loadImage("Vault_Boy(3).png");
  startup_font = createFont("Monofonto",16,true);
}

PImage Start_Up1;
PFont startup_font;

void draw()
{
  StartUp();
}

void StartUp()
{
   fill(40,255,75);
   ellipse(width/2, height/2, 400, 400);
   
   image(Start_Up1, width/2-180, height/2-160, 350,350);
   textFont(startup_font, 60);
   text("Starting Up", width/2-150, height/2 + 300);
   noStroke();
   rect(width/2 + 160, height/2 + 290, 10,10);
   
   for(int i=0; i < 4; i++)
   {
        rect(width/2 + 190, height/2 + 290, 10,10);
        rect(width/2 + 220, height/2 + 290, 10,10);   
   }
}