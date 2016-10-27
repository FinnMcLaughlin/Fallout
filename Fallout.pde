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
  
  Start_Up1=loadImage("Vault_Boy.png");
  Start_Up2=loadImage("Start_Complete.png");
  startup_font = createFont("Monofonto",16,true);
}

PImage Start_Up1, Start_Up2;
PFont startup_font;
int counter = 0;
int i = 0;

void draw()
{
  if(frameCount < 300)
  {
    i = StartUp(i);
  }
  else if(frameCount > 300 && counter <= 150)
  {
    FinishStartUp();
  }
  else if(counter > 150)
  {
    Menu_Stats();
  }
}

int StartUp(int i)
{
       stroke(40,255,75);
       line(15, 15, width-15, 15);
       line(15, 15, 15, 65);
       line(width-15, 15, width-15, 65);
       
       stroke(40,255,75);
       line(15, height-15, width-15, height-15);
       line(15, height-15, 15, height-65);
       line(width-15, height-15, width-15, height-65);
       
       fill(40,255,75);
       ellipse(width/2, height/2, 400, 400);
     
       image(Start_Up1, width/2-180, height/2-160, 350,350);
       textFont(startup_font, 60);
       text("Starting Up", width/2-150, height/2 + 300);
       noStroke();
       rect(width/2 + 160, height/2 + 290, 10,10);
     
       if(i > 30)
       {
         fill(40,255,75);
         rect(width/2 + 190, height/2 + 290, 10,10);
       }
       
       if(i > 60)
       {
         fill(40,255,75);
         rect(width/2 + 220, height/2 + 290, 10,10);  
       }
       
       if(i > 90)
       {
         fill(0,51,20);
         rect(width/2 + 190, height/2 + 290, 10,10);
         rect(width/2 + 220, height/2 + 290, 10,10); 
         return(0);
       }
       
       i++;
       return(i);
}

void FinishStartUp()
{
  background(0,51,20,40);
  for(int i=0; i < height; i+=10)
  {
    stroke(0,50);
    line(0, i, width, i);
  }
  
  stroke(40,255,75);
  line(15, 15, width-15, 15);
  line(15, 15, 15, 65);
  line(width-15, 15, width-15, 65);
       
  stroke(40,255,75);
  line(15, height-15, width-15, height-15);
  line(15, height-15, 15, height-65);
  line(width-15, height-15, width-15, height-65);
  
   fill(40,255,75);
   ellipse(width/2, height/2, 400, 400);
       
   image(Start_Up2, width/2-180, height/2-160, 350,350);
   textFont(startup_font, 60);
   text("Complete", width/2-150, height/2 + 300);
   
   counter++;
}

void Menu_Stats()
{
  background(0,51,20,40);
  for(int i=0; i < height; i+=10)
  {
    stroke(0,50);
    line(0, i, width, i);
  }
  
   textFont(startup_font, 60);
   text("STAT", 150, 50);
   text("INV", 350, 50);
   text("DATA", 550, 50);
   text("MAP", 750, 50);
   text("RADIO", 950, 50);
}