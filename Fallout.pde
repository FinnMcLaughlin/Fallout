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
  //Set Up Menu_Special
  Strength=loadImage("Strength.png");
  Perception=loadImage("Perception.png");
  Endurance=loadImage("Endurance.png");
  Charisma=loadImage("Charisma.png");
  Intelligence=loadImage("Intelligence.png");
  Agility=loadImage("Agility.png");
  Luck=loadImage("Luck.png");
  
  Default = Strength;
}

PImage Start_Up1, Start_Up2;//Images for Start Up
PImage Cripple, Cripple2;//Images for Menu_Status
PImage Default, Strength, Perception, Endurance, Charisma, Intelligence, Agility, Luck;//Images for Special

int DefaultPosW;
int DefaultPosH;
int DefaultSizeW = 350;
int DefaultSizeH = 450;
String DefaultString = "Strength slightly increases melee damage and carrying capacity.\nMelee damage is at 1 damage for every 2 Strength (+5 damage at 10)\nand carrying capacity is an added 10 lbs for every\npoint (+100 lbs at 10 strength)";
int rect_i , rect_j, Special_counter = 0;


PFont startup_font;
int counter = 0;
int i = 0;

void draw()
{
  /*if(frameCount < 300)//Load Start Up
  {
    i = StartUp(i);
  }
  else if(frameCount > 300 && counter <= 150)//Finish Start Up
  {
    FinishStartUp();
  }
  else if(counter > 150)//Load Menu
  {*/
    Menu();
  //}
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

void Menu()
{
  //Status();
  //Special();
  Perks();
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
   fill(40,255,75,80);
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
   text("AP 50/120", width-205, height-20);

   /*if(frameCount % 10 == 0)
   {*/
    image(Cripple2, width/2-150, height/2-200);   // Change 
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

void Special()
{
  if(Special_counter < 1)
  {
    DefaultPosW = width/2+150;
    DefaultPosH = height/2-275;
    rect_i = width/2-438;
    rect_j = height/2-234;
    Special_counter = 1;  
  }
  
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
   fill(40,255,75,80);
   text("STATUS", 158, 115);
   fill(40,255,75,200);
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
   text("AP 50/120", width-205, height-20);
   //S.P.E.C.I.A.L
   textFont(startup_font, 50);
   text("Strength", 250, 200);
   text("Perception", 250, 275);
   text("Endurance", 250, 350);
   text("Charisma", 250, 425);
   text("Intelligence", 250, 500);
   text("Agility", 250, 575);
   text("Luck", 250, 650);
   //Values
   text("6", 600, 200);
   text("5", 600, 275);
   text("3", 600, 350);
   text("5", 600, 425);
   text("3", 600, 500);
   text("3", 600, 575);
   text("3", 600, 650);
   noFill();
   
   textFont(startup_font, 20);
   
   if( (mouseX > 245 && mouseX < 645) && (mouseY > 150 && mouseY < 210) )
   {
     image(Strength, width/2+150, height/2-275, 350, 450);
     Default = Strength;
     DefaultPosW =  width/2+150;
     DefaultPosH  = height/2-275;
     DefaultSizeW = 350;
     DefaultSizeH = 450;
     rect_i = width/2-438;
     rect_j = height/2-234;
     rect(rect_i, rect_j,400,60);
     DefaultString = "Strength slightly increases melee damage and carrying capacity.\nMelee damage is at 1 damage for every 2 Strength (+5 damage at 10)\nand carrying capacity is an added 10 lbs for every\npoint (+100 lbs at 10 strength)";
     text(DefaultString, width/2+30, height/2+200);
   }
   else if( (mouseX > 245 && mouseX < 645) && (mouseY > 215 && mouseY < 275) )
   {
     image(Perception, width/2+150, height/2-280, 375,475);
     Default = Perception;
     DefaultPosW =  width/2+150;
     DefaultPosH  = height/2-280;
     DefaultSizeW = 375;
     DefaultSizeH = 475;
     rect_i = width/2-438;
     rect_j = height/2-160;
     rect(rect_i, rect_j,400,60);
     DefaultString = "Perception determines how far away enemies can be detected on the\ncompass (enemies show as red bars). When playing with a high\nPerception, it is possible to sense the enemies even before they come\ninto view.";
     text(DefaultString, width/2+30, height/2+200);
   }
   else if( (mouseX > 245 && mouseX < 645) && (mouseY > 280 && mouseY < 340) )
   {
     image(Endurance, width/2+150, height/2-280, 450, 450);
     Default = Endurance;
     DefaultPosW =  width/2+150;
     DefaultPosH  = height/2-280;
     DefaultSizeW = 450;
     DefaultSizeH = 450;
     rect_i = width/2-438;
     rect_j = height/2-80;
     rect(rect_i, rect_j,400,60);
     DefaultString = "Endurance determines a character's environmental resistances (poison,\nradiation), Hit Points, and Healing Rate, as well as the starting levels of\nthe Unarmed and Survival skills. It also determines the number of\nimplants allowed.";
     text(DefaultString, width/2+30, height/2+200);
   }
   else if( (mouseX > 245 && mouseX < 645) && (mouseY > 360 && mouseY < 420) )
   {
     image(Charisma, width/2+200, height/2-230, 255, 405);
     Default = Charisma;
     DefaultPosW = width/2+200;
     DefaultPosH = height/2 - 230;
     DefaultSizeW = 255;
     DefaultSizeH = 405;
     rect_i = width/2-438;
     rect_j = height/2-5;
     rect(rect_i, rect_j,400,60);
     DefaultString = "Charisma increases the disposition of all NPCs, which makes Speech\nchecks easier. Disposition is also affected somewhat by Karma, quests,\nand dialog options. Charisma also affects the Barter and Speech skills.";
     text(DefaultString, width/2+30, height/2+200);
   }
   else if( (mouseX > 245 && mouseX < 645) && (mouseY > 430 && mouseY < 485) )
   {
     image(Intelligence, width/2+200, height/2-230, 400, 400);
     Default = Intelligence;
     DefaultPosW = width/2+200;
     DefaultPosH = height/2 - 230;
     DefaultSizeW = 400;
     DefaultSizeH = 400;
     rect_i = width/2-438;
     rect_j = height/2+70;
     rect(rect_i, rect_j,400,60);
     DefaultString = "Intelligence determines the number of skill points earned per level up.\nThe base number of skill points gained per level is 10 + INT. Skill points\ngained for raised Intelligence are not retroactive for past levels, so\nincreasing this primary stat early, if at all, is the best.";
     text(DefaultString, width/2+30, height/2+200);
   }
   else if( (mouseX > 245 && mouseX < 645) && (mouseY > 510 && mouseY < 570) )
   {
     image(Agility, width/2+200, height/2-230, 400, 400);
     Default = Agility;
     DefaultPosW = width/2+200;
     DefaultPosH = height/2 - 230;
     DefaultSizeW = 400;
     DefaultSizeH = 400;
     rect_i = width/2-438;
     rect_j = height/2+145;
     rect(rect_i, rect_j,400,60);
     DefaultString = "Agility determines the number of Action Points available for use in\nV.A.T.S.";
     text(DefaultString, width/2+30, height/2+200);
   }   
   else if( (mouseX > 245 && mouseX < 645) && (mouseY > 590 && mouseY < 660) )
   {
     image(Luck, width/2+150, height/2-230, 400, 400);
     Default = Luck;
     DefaultPosW = width/2+150;
     DefaultPosH = height/2 - 230;
     DefaultSizeW = 400;
     DefaultSizeH = 400;
     rect_i = width/2-438;
     rect_j = height/2+220;
     rect(rect_i, rect_j,400,60);
     DefaultString = "Luck raises the value of every skill and affects Critical Chance. It also\nimproves the odds of winning at any casino game; the higher the Luck,\nthe more likely favorable outcomes on bets will be.";
     text(DefaultString, width/2+30, height/2+200);
   }
   else
   {
     image(Default, DefaultPosW, DefaultPosH, DefaultSizeW, DefaultSizeH);
     rect(rect_i, rect_j,400,60);
     text(DefaultString, width/2+30, height/2+200);
   }
}

void Perks()
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
   fill(40,255,75,80);
   text("STATUS", 158, 115);
   fill(40,255,75,80);
   text("SPECIAL", 370, 115);
   fill(40,255,75,200);
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
   text("AP 50/120", width-205, height-20);
   
   //Perks
   //Rifleman – Keep your distance long and your kill-count high. Attacks with non-automatic rifles do 20% more damage.
   //Locksmith – Your nimble fingers allow you to pick Advanced locks.
   //Cap Collector – Buying and selling prices at vendors are now much better.
   //Party Boy – Nobody has a good time like you! There's no chance you'll get addicted to alcohol.
   //Sneak – Become whisper, become shadow. You are 20% harder to detect while sneaking.
   //Mysterious Stranger – Who is he? Why does he help? Who cares! The Mysterious Stranger will appear occasionally in V.A.T.S. to lend a hand, with deadly efficiency.
   //Medic – Stimpaks now restore 60% of lost Health, and RadAway removes 60% of radiation. 
 }