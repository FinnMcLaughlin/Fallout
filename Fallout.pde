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
  
  //Set Up for Start Up Screen
  Start_Up1=loadImage("StartingUp.png");
  Start_Up2=loadImage("Start_Complete.png");
  startup_font = createFont("Monofonto",16,true);
  //Set Up Menu_Status
  Cripple=loadImage("Fallout_Cripple(1).png");
  Cripple2=loadImage("Fallout_Cripple(2).png");
}

PImage Start_Up1, Start_Up2;//Images for Start Up
PImage Cripple, Cripple2;//Images for Menu_Status

PFont startup_font;
int counter = 0;
float fade;
int i = 0;

void draw()
{
  if(frameCount < 300)//Load Start Up
  {
    i = StartUp(i);
  }
  else if(frameCount > 300 && counter <= 150)//Finish Start Up
  {
    FinishStartUp();
  }
  else if(counter > 150)//Load Menu
  {
    Menu_Stats();
  }
}


int StartUp(int i)
{
       //Border Lines Start Up
       stroke(40,255,75);
       line(15, 15, width-15, 15);
       line(15, 15, 15, 65);
       line(width-15, 15, width-15, 65);
       
       stroke(40,255,75);
       line(15, height-15, width-15, height-15);
       line(15, height-15, 15, height-65);
       line(width-15, height-15, width-15, height-65);
       //Start Up Circle
       fill(40,255,75);
       ellipse(width/2, height/2, 400, 400);
       
       image(Start_Up1, width/2-180, height/2-160, 350,350);
       textFont(startup_font, 60);
       text("Starting Up", width/2-150, height/2 + 300); //Change to Establishing Connection
       noStroke();
       rect(width/2 + 160, height/2 + 290, 10,10);
       //Loading     
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
   text("Complete", width/2-150, height/2 + 300); //Change to Success
   
   counter++;
}

void Menu_Stats()
{
  Status();
}

void Status()
{
  background(0,51,20,40);
  for(int i=0; i < height; i+=10)
  {
    stroke(0,50);
    line(0, i, width, i);
  }
   //Menu Index
   fill(40,255,75);
   textFont(startup_font, 60);
   text("STAT", 180, 50);
   text("INV", 390, 50);
   text("DATA", 565, 50);
   text("MAP", 790, 50);
   text("RADIO", 990, 50);
   //Menu Index Border
   stroke(40, 255, 75);
   line(15, 60, 15, 90);//Left Side
   line(15, 60, 170, 60);
   line(170, 60, 170, 30);
   line(170, 30, 175, 30);
   
   line(330, 30, 335, 30);//Right Side
   line(335, 30, 335, 60);
   line(335, 60, width-15, 60);
   line(width-15, 60, width-15, 90);
   //Sub Index
   textFont(startup_font, 50);
   fill(40,255,75,200);
   text("STATUS", 158, 115);
   fill(40,255,75,130);
   text("SPECIAL", 370, 115);
   fill(40,255,75,80);
   text("PERKS", 605, 115);
   
   //Info at the bottom of the screen
   fill(0, 150, 40);
   rect(15, height-60, 300, 50);//Health
   rect(320, height-60, 650, 50);//Level
   rect(975, height-60, 375, 50);//AP

   fill(40,255,75);
   textFont(startup_font, 40);
   text("HP 75/135", 20, height-20);
   text("Level 13", 325, height-20);
   stroke(40,255,75);
   noFill();
   rect(490, height-45, 460, 20);
   fill(40,255,75);
   rect(490,height-45, 50, 20);
   text("AP 40/90", width-200, height-20);

   /*if(frameCount % 10 == 0)
   {*/
    image(Cripple2, width/2-150, height/2-200); 
   /*}
   else
   {
     image(Cripple, width/2-150, height/2-200);
   }*/
   
   //Limbs
   fill(40,255,75);
   rect(width/2-50, height/2-225, 100, 20);//Head
   rect(width/2-220, height/2-50, 100, 20);//Left Arm
   noFill();
   rect(width/2+100, height/2, 100, 20);//Right Arm
   fill(40,255,75);
   rect(width/2+100, height/2, 30, 20);
   rect(width/2-200, height/2+150, 100, 20);//Left Leg
   rect(width/2+70, height/2+180, 100, 20);//Right Leg
   
   fill(0, 150, 40);
   rect(15, height-130, 200, 50);//Stimpax
   rect(230, height-130, 200, 50);//Radaway
   fill(40,255,75);
   textFont(startup_font, 30);
   text("STIMPAX (1)", 30, height-95);
   text("RADAWAY (0)", 235, height-95);
}