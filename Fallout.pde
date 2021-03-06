import processing.sound.*;

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
  
  Menu = new Menu();

  //Set Up for Start Up Screen
  Start_Up1=loadImage("StartingUp.png");
  Start_Up2=loadImage("Start_Complete.png");
  startup_font = createFont("Monofonto",16,true);
  
  //Set Up Menu_Status
  Cripple=loadImage("Fallout_Cripple(1).png");
  Healthy=loadImage("Healthy.png");
  
  //Set Up Menu_Special
  Strength=loadImage("Strength.png");
  Perception=loadImage("Perception.png");
  Endurance=loadImage("Endurance.png");
  Charisma=loadImage("Charisma.png");
  Intelligence=loadImage("Intelligence.png");
  Agility=loadImage("Agility.png");
  Luck=loadImage("Luck.png");
  
  Default = Strength;
  
  //Set Up Menu_Perks
  Locksmith=loadImage("Locksmith.png");
  Party=loadImage("Party.png");
  Rifleman=loadImage("Rifleman.png");
  Sneak=loadImage("Sneak.png");
  Medic=loadImage("Medic.png");
  
  Default_P=Locksmith;  
  
  //Setup Weapons
  Machete=loadImage("Machete.png");
  SMG=loadImage("SMG.png");
  Shotgun=loadImage("Shotgun.png");
  Minigun=loadImage("Minigun.png");
  Laser=loadImage("Laser.png");
  
  Default_Weapon = Machete;
  
  //Setup Apparel
  Raider = loadImage("Raider.png");
  Suit = loadImage("Suit.png");
  Scavenge = loadImage("Scavenger.png");
  Cowboy = loadImage("CowboyOutfit.png");
  
  ADefault = Raider;
  
  //Setup Aid
  Stimpak = loadImage("Stimpak.png");
  Buffout = loadImage("Buffout.png");
  Crisps = loadImage("Crisps.png");
  Radx = loadImage("RadX.png");
  
  Aid_Default = Stimpak;
  
  //Setup Misc
  Note = loadImage("Note.png");
  Disk = loadImage("Holodisk.png");
  Keycard = loadImage("Keycard.png");
  Jar = loadImage("Jar.png");
  Processor = loadImage("Processor.png");
  
  MDefault = Note;
  
  //Setup Quests
  CurtainCall = loadImage("CurtainCall.png");
  FreedomRoad = loadImage("FreedomRoad.png");
  Institute = loadImage("Institute.png");
  Devil = loadImage("Devil.png");
  
  QDefault = Institute;
  
  //Setup Map
  Map = loadImage("map.png");
  
  Classic = new SoundFile(this, "1812.mp3");
  Atom = new SoundFile(this, "Atom.mp3");
  Static = new SoundFile(this, "Static.wav");
}

PImage Start_Up1, Start_Up2;//Images for Start Up
PImage Cripple, Healthy;//Images for Menu_Status
PImage Default, Strength, Perception, Endurance, Charisma, Intelligence, Agility, Luck;//Images for Special
PImage Locksmith, Default_P, Party, Rifleman, Sneak, Medic;//Images for Perks
PImage Machete, SMG, Shotgun, Minigun, Laser, Default_Weapon;//Images for Weapons
PImage QDefault, FreedomRoad, CurtainCall, Institute, Devil;//Images for Quests
PImage ADefault, Raider, Suit, Scavenge, Cowboy;//Images for Clothes
PImage Aid_Default, Stimpak, Buffout, Crisps, Radx;//Images for Aid
PImage MDefault, Note, Disk, Keycard, Jar, Processor;//Images for Misc
PImage Map;//Images for Map

//Defaults for SPECIAL
int DefaultPosW;
int DefaultPosH;
int DefaultSizeW = 350;
int DefaultSizeH = 450;
String DefaultString = "Strength slightly increases melee damage and carrying capacity.\nMelee damage is at 1 damage for every 2 Strength (+5 damage at 10)\nand carrying capacity is an added 10 lbs for every\npoint (+100 lbs at 10 strength)";
int rect_i , rect_j, Special_counter = 0;
//Default for Perks
int PDefaultPosW;
int PDefaultPosH;
int PDefaultSizeW = 300;
int PDefaultSizeH = 400;
String PDefaultString = "Your nimble fingers allow you to pick Advanced locks.";
int P_rect_i , P_rect_j, Perk_counter = 0;
//Default Quests
int QDefaultPosW;
int QDefaultPosH;
int QDefaultSizeW = 300;
int QDefaultSizeH = 400;
String QDefaultString = "Build the teleporter to gain access to the Institute\nBlow up the reactor within the Institute";
int QCounter = 0;
boolean line = true;

String Aid_S_Default = "Heals 80 points of health";
String MDefaultString = "\"If anyone finds this, I am making my way North in an attempt\nto overthrow the Institute, I will make my assault in 4 days. If\nyou have any interest in taking them down, find me \"";


int radio_counter = 0;
SoundFile Classic;
SoundFile Atom;
SoundFile Static;

Menu Menu;
PFont startup_font;
int counter = 0;
int menu_counter = 0;
int stimp_count = 1;
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
    Menu();
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

void Menu()
{
  switch(menu_counter)
  {
    case 0: Status();
            break;
    case 1: Special();
            break;
    case 2: Perks();
            break;
    case 3: Weapons();
            break;
    case 4: Apparel();
            break;
    case 5: Aid();
            break;
    case 6: Misc();
            break;
    case 7: Data();
            break;
    case 8: Stats();
            break;
    case 9: Map();
            break;
    case 10: Radio();
             break;
  }
}

void Status()                                                                                               //Status
{
   Menu.Index();
   
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
   //Sub Index Boxes
   fill(0, 150, 40, 80);
   if( (mouseX > 150 && mouseX < 350) && (mouseY > 50 && mouseY < 150) )
   {
     rect(150, 70, 200, 55);
   }
   if( (mouseX > 365 && mouseX < 580) && (mouseY > 50 && mouseY < 150) )
   {
     rect(365, 70, 220, 55);
   }
   if( (mouseX > 600 && mouseX < 775) && (mouseY > 50 && mouseY < 150) )
   {
     rect(600, 70, 180, 55);
   }
   
   
   //Info at the bottom of the screen
   fill(0, 150, 40);
   rect(15, height-60, 300, 50);//Health
   rect(320, height-60, 650, 50);//Level
   rect(975, height-60, 375, 50);//AP

   fill(40,255,75);
   textFont(startup_font, 40);
   text("Level 13", 325, height-20);
   stroke(40,255,75);
   noFill();
   rect(490, height-45, 460, 20);
   fill(40,255,75);
   rect(490,height-45, 50, 20);
   text("AP 50/120", width-205, height-20);
   
   //Limbs
   fill(40,255,75);
   rect(width/2-50, height/2-225, 100, 20);//Head
   rect(width/2-240, height/2-50, 100, 20);//Left Arm
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
   text("RADAWAY (0)", 235, height-95);
   
   if(stimp_count < 1)
   {
     text("STIMPAX (0)", 30, height-95);
     fill(40,255,75);
     rect(width/2+100, height/2, 100, 20);
     image(Healthy, width/2-145, height/2-200, 275, 350);
     textFont(startup_font, 40);
     text("HP 135/135", 20, height-20);
   }
   else
   {
     text("STIMPAX (1)", 30, height-95);
     image(Cripple, width/2-145, height/2-200, 275, 350);
     textFont(startup_font, 40);
     text("HP 75/135", 20, height-20);
   }
}

void Special()                                                                                         //Special
{
  if(Special_counter < 1)
  {
    DefaultPosW = width/2+150;
    DefaultPosH = height/2-275;
    rect_i = width/2-438;
    rect_j = height/2-234;
    Special_counter = 1;  
  }
  
   Menu.Index();
   
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
   //Sub-Index Boxes
   fill(0, 150, 40, 80);
   if( (mouseX > 150 && mouseX < 350) && (mouseY > 50 && mouseY < 150) )
   {
     rect(150, 70, 200, 55);
   }
   if( (mouseX > 365 && mouseX < 580) && (mouseY > 50 && mouseY < 150) )
   {
     rect(365, 70, 220, 55);
   }
   if( (mouseX > 600 && mouseX < 775) && (mouseY > 50 && mouseY < 150) )
   {
     rect(600, 70, 180, 55);
   }
   
   //Info at the bottom of the screen
   fill(0, 150, 40);
   rect(15, height-60, 300, 50);//Health
   rect(320, height-60, 650, 50);//Level
   rect(975, height-60, 375, 50);//AP

   fill(40,255,75);
   textFont(startup_font, 40);
   if(stimp_count < 1)
   {
     text("HP 135/135", 20, height-20);
   }
   else
   {
     text("HP 75/135", 20, height-20);
   }
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
   fill(0, 150, 40, 80);
   if( (mouseX > 245 && mouseX < 645) && (mouseY > 150 && mouseY < 210) )
   {
     image(Strength, width/2+150, height/2-275, 350, 450);
     Default = Strength;
     DefaultPosW =  width/2+150;
     DefaultPosH  = height/2-275;
     DefaultSizeW = 350;
     DefaultSizeH = 450;
     rect(width/2-438, height/2-234,400,60);
     DefaultString = "Strength slightly increases melee damage and carrying capacity.\nMelee damage is at 1 damage for every 2 Strength (+5 damage at 10)\nand carrying capacity is an added 10 lbs for every\npoint (+100 lbs at 10 strength)";
     fill(40,255,75);
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
     rect(width/2-438, height/2-160,400,60);
     DefaultString = "Perception determines how far away enemies can be detected on the\ncompass (enemies show as red bars). When playing with a high\nPerception, it is possible to sense the enemies even before they come\ninto view.";
     fill(40,255,75);
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
     rect(width/2-438, height/2-80,400,60);
     DefaultString = "Endurance determines a character's environmental resistances (poison,\nradiation), Hit Points, and Healing Rate, as well as the starting levels of\nthe Unarmed and Survival skills. It also determines the number of\nimplants allowed.";
     fill(40,255,75);
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
     rect(width/2-438, height/2-5,400,60);
     DefaultString = "Charisma increases the disposition of all NPCs, which makes Speech\nchecks easier. Disposition is also affected somewhat by Karma, quests,\nand dialog options. Charisma also affects the Barter and Speech skills.";
     fill(40,255,75);
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
     rect(width/2-438, height/2+70,400,60);
     DefaultString = "Intelligence determines the number of skill points earned per level up.\nThe base number of skill points gained per level is 10 + INT. Skill points\ngained for raised Intelligence are not retroactive for past levels, so\nincreasing this primary stat early, if at all, is the best.";
     fill(40,255,75);
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
     rect(width/2-438, height/2+145,400,60);
     DefaultString = "Agility determines the number of Action Points available for use in\nV.A.T.S.";
     fill(40,255,75);
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
     rect(width/2-438, height/2+220,400,60);
     DefaultString = "Luck raises the value of every skill and affects Critical Chance. It also\nimproves the odds of winning at any casino game; the higher the Luck,\nthe more likely favorable outcomes on bets will be.";
     fill(40,255,75);
     text(DefaultString, width/2+30, height/2+200);
   }
   else
   {
     image(Default, DefaultPosW, DefaultPosH, DefaultSizeW, DefaultSizeH);
     fill(40,255,75);
     text(DefaultString, width/2+30, height/2+200);
   }
   

}

void Perks()                                                                                       //Perks
{
  if(Perk_counter < 1)
  {
    PDefaultPosW = width/2+100;
    PDefaultPosH = height/2-250;
    Perk_counter = 1;  
  }
  
   Menu.Index();
   
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
   fill(0, 150, 40, 80);
   if( (mouseX > 150 && mouseX < 350) && (mouseY > 50 && mouseY < 150) )
   {
     rect(150, 70, 200, 55);
   }
   if( (mouseX > 365 && mouseX < 580) && (mouseY > 50 && mouseY < 150) )
   {
     rect(365, 70, 220, 55);
   }
   if( (mouseX > 600 && mouseX < 775) && (mouseY > 50 && mouseY < 150) )
   {
     rect(600, 70, 180, 55);
   }
   
   //Info at the bottom of the screen
   fill(0, 150, 40);
   rect(15, height-60, 300, 50);//Health
   rect(320, height-60, 650, 50);//Level
   rect(975, height-60, 375, 50);//AP

   fill(40,255,75);
   textFont(startup_font, 40);
   if(stimp_count < 1)
   {
     text("HP 135/135", 20, height-20);
   }
   else
   {
     text("HP 75/135", 20, height-20);
   }
   text("Level 13", 325, height-20);
   stroke(40,255,75);
   noFill();
   rect(490, height-45, 460, 20);
   fill(40,255,75);
   rect(490,height-45, 50, 20);
   text("AP 50/120", width-205, height-20);
   
   //Perks
   textFont(startup_font, 50);
   text("Locksmith", width/2-360, height/2-180);
   text("Rifleman", width/2-360, height/2-105);
   text("Party Animal", width/2-360, height/2-30);
   text("Medic", width/2-360, height/2+55);
   text("Sneak", width/2-360, height/2+130);
   
   textFont(startup_font, 20);
   fill(0, 150, 40, 80);
   if( (mouseX > width/2-365 && mouseX < width/2-130) && (mouseY > height/2 - 230 && mouseY < height/2 - 170) )
   {
     rect(width/2-365, height/2-225, 235, 60);
     image(Locksmith, width/2+100, height/2-250, 300, 400);
     fill(40,255,75);
     text("Your nimble fingers allow you to pick Advanced locks.", width-575, height-180);
     Default_P = Locksmith;
     PDefaultPosW = width/2+100;
     PDefaultPosH = height/2-250;
     PDefaultSizeW = 300;
     PDefaultSizeH = 400;
     PDefaultString = "Your nimble fingers allow you to pick Advanced locks.";
   }
   else if( (mouseX > width/2-365 && mouseX < width/2-160) && (mouseY > height/2 - 160 && mouseY < height/2 - 100) )
   {
     rect(width/2-365, height/2-155, 205, 60);
     image(Rifleman, width/2+50, height/2-300, 400, 450);
     fill(40,255,75);
     text("Keep your distance long and your kill-count high.\nAttacks with non-automatic rifles do 20% more damage.", width-575, height-180);
     Default_P = Rifleman;
     PDefaultPosW = width/2+50;
     PDefaultPosH = height/2-300;
     PDefaultSizeW = 400;
     PDefaultSizeH = 450;
     PDefaultString = "Keep your distance long and your kill-count high.\nAttacks with non-automatic rifles do 20% more damage.";
   }
   else if( (mouseX > width/2-365 && mouseX < width/2+75) && (mouseY > height/2 - 90 && mouseY < height/2 - 30) )
   {   
     rect(width/2-365, height/2-80, 290, 65);
     image(Party, width/2+200, height/2-200, 250, 350);
     fill(40,255,75);
     text("Nobody has a good time like you! There's no chance\nyou'll get addicted to alcohol.", width-575, height-180);
     Default_P = Party;
     PDefaultPosW = width/2+200;
     PDefaultPosH = height/2-200;
     PDefaultSizeW = 250;
     PDefaultSizeH = 350;
     PDefaultString = "Nobody has a good time like you! There's no chance\nyou'll get addicted to alcohol.";
   }
   else if( (mouseX > width/2-365 && mouseX < width/2-220) && (mouseY > height/2 - 20 && mouseY < height/2 + 60) )
   {   
     rect(width/2-365, height/2+5, 145, 60);
     image(Medic, width/2+200, height/2-200, 250, 350);
     fill(40,255,75);
     text("Stimpaks now restore 60% of lost Health, and RadAway\nremoves 60% of radiation.", width-575, height-180);
     Default_P = Medic;
     PDefaultPosW = width/2+200;
     PDefaultPosH = height/2-200;
     PDefaultSizeW = 250;
     PDefaultSizeH = 350;
     PDefaultString = "Stimpaks now restore 60% of lost Health, and RadAway\nremoves 60% of radiation.";
   }
   else if( (mouseX > width/2-365 && mouseX < width/2-210) && (mouseY > height/2 + 50 && mouseY < height/2 + 130) )
   {   
     rect(width/2-365, height/2+80, 155, 60);
     image(Sneak, width/2+200, height/2-200, 250, 350);
     fill(40,255,75);
     text("Become whisper, become shadow. You are 20% harder\nto detect while sneaking.", width-575, height-180);
     Default_P = Sneak;
     PDefaultPosW = width/2+200;
     PDefaultPosH = height/2-200;
     PDefaultSizeW = 250;
     PDefaultSizeH = 350;
     PDefaultString = "Become whisper, become shadow. You are 20% harder\nto detect while sneaking.";
   }
   else
   {
     image(Default_P, PDefaultPosW, PDefaultPosH, PDefaultSizeW, PDefaultSizeH);
     fill(40,255,75);
     text(PDefaultString, width-575, height-180);
   }
}


void Weapons()                                                                   //Weapons
{
   Menu.Index(); 
 
  //Menu Index Border
   stroke(40, 255, 75);
   line(15, 60, 15, 90);//Left Side
   line(15, 60, 380, 60);
   line(380, 60, 380, 30);
   line(380, 30, 385, 30);
   
   line(495, 30, 500, 30);//Right Side
   line(500, 30, 500, 60);
   line(500, 60, width-15, 60);
   line(width-15, 60, width-15, 90); 
   
   //Sub Index
   textFont(startup_font, 50);
   fill(40,255,75,200);
   text("WEAPONS", 150, 115);
   fill(40,255,75,80);
   text("APPAREL", 440, 115);
   fill(40,255,75,80);
   text("AID", 700, 115);
   fill(40,255,75,80);
   text("MISC", 820, 115);
   fill(0, 150, 40, 80);
   
   if( (mouseX > 150 && mouseX < 400) && (mouseY > 50 && mouseY < 150) )
   {
     rect(145, 70, 265, 55);
   }
   if( (mouseX > 440 && mouseX < 670) && (mouseY > 50 && mouseY < 150) )
   {
     rect(435, 70, 235, 55);
   }
   if( (mouseX > 690 && mouseX < 790) && (mouseY > 50 && mouseY < 150) )
   {
     rect(690, 70, 100, 55);
   }
   if( (mouseX > 815 && mouseX < 950) && (mouseY > 50 && mouseY < 150) )
   {
     rect(815, 70, 140, 55);
   }
   
   textFont(startup_font, 50);
   fill(40,255,75);
   text("Warrior's Machete", width/4-100, height/2-150);
   text("Tactical SMG", width/4-100, height/2-75);
   text("Hunter's Shotgun", width/4-100, height/2);
   text("Minigun", width/4-100, height/2+75);
   text("Laser Pistol", width/4-100, height/2+150);
   
   //Info at the bottom of the screen
   fill(0, 150, 40);
   rect(15, height-60, 350, 50);//Health
   rect(370, height-60, 220, 50);//Level
   rect(595, height-60, 755, 50);//AP

   fill(40,255,75);
   textFont(startup_font, 40);
   text("WEIGHT     80/140", 20, height-20);
   text("CAPS  602", 375, height-20);
   text("AP 50/120", width-205, height-20);
   
   fill(0, 150, 40, 80);  
   if( (mouseX > width/4-105 && mouseX < width/4+310) && (mouseY > height/2-200 && mouseY < height/2-140) )
   {
     rect(width/4-105, height/2-200, 415, 60);
     image(Machete, width/2+100, height/2-250, 500, 500);
     Default_Weapon = Machete;
   }
   else  if( (mouseX > width/4-105 && mouseX < width/4+200) && (mouseY > height/2-125 && mouseY < height/2-65) )
   {
     rect(width/4-105, height/2-125, 305, 60);
     image(SMG, width/2+100, height/2-250, 500, 500);
     Default_Weapon = SMG;
   }
   else  if( (mouseX > width/4-105 && mouseX < width/4+290) && (mouseY > height/2-50 && mouseY < height/2+10) )
   {
     rect(width/4-105, height/2-50, 395, 60);
     image(Shotgun, width/2+100, height/2-250, 500, 500);
     Default_Weapon = Shotgun;     
   }
   else  if( (mouseX > width/4-105 && mouseX < width/4+80) && (mouseY > height/2+25 && mouseY < height/2+95) )
   {
     rect(width/4-105, height/2+25, 185, 65);
     image(Minigun, width/2+100, height/2-250, 500, 500);
     Default_Weapon = Minigun;  
   }
   else  if( (mouseX > width/4-105 && mouseX < width/4+165) && (mouseY > height/2+100 && mouseY < height/2+165) )
   {
     rect(width/4-105, height/2+100, 270, 65);
     image(Laser, width/2+100, height/2-250, 500, 500);
     Default_Weapon = Laser;  
   }
   else
   {
    image(Default_Weapon, width/2+100, height/2-250, 500, 500); 
   } 
}

void Apparel()                                                                             //Apparel
{
   Menu.Index(); 
 
  //Menu Index Border
   stroke(40, 255, 75);
   line(15, 60, 15, 90);//Left Side
   line(15, 60, 380, 60);
   line(380, 60, 380, 30);
   line(380, 30, 385, 30);
   
   line(495, 30, 500, 30);//Right Side
   line(500, 30, 500, 60);
   line(500, 60, width-15, 60);
   line(width-15, 60, width-15, 90); 
   
   //Sub Index
   textFont(startup_font, 50);
   fill(40,255,75,80);
   text("WEAPONS", 150, 115);
   fill(40,255,75,200);
   text("APPAREL", 440, 115);
   fill(40,255,75,80);
   text("AID", 700, 115);
   fill(40,255,75,80);
   text("MISC", 820, 115);
   
   fill(0, 150, 40, 80);
   if( (mouseX > 150 && mouseX < 400) && (mouseY > 50 && mouseY < 150) )
   {
     rect(145, 70, 265, 55);
   }
   if( (mouseX > 440 && mouseX < 670) && (mouseY > 50 && mouseY < 150) )
   {
     rect(435, 70, 235, 55);
   }
   if( (mouseX > 690 && mouseX < 790) && (mouseY > 50 && mouseY < 150) )
   {
     rect(690, 70, 100, 55);
   }
   if( (mouseX > 815 && mouseX < 950) && (mouseY > 50 && mouseY < 150) )
   {
     rect(815, 70, 140, 55);
   }
   
   textFont(startup_font, 50);
   fill(40,255,75);
   text("Raider Armour", width/4-100, height/2-125);
   text("Fancy Suit", width/4-100, height/2-50);
   text("Cowboy Outfit", width/4-100, height/2+25);
   text("Scavenger Clothes", width/4-100, height/2+100);
   
   fill(0, 150, 40, 80);
   if( (mouseX > width/4-100 && mouseX < width/4+230) && (mouseY > height/2-175 && mouseY < height/2-115) )
   {
     rect(width/4-100, height/2-175, 330, 60);
     image(Raider, width/2+125, height/2-250, 300, 500);
     ADefault = Raider;
   }
   else  if( (mouseX > width/4-100 && mouseX < width/4+145) && (mouseY > height/2-100 && mouseY < height/2-40) )
   {
     rect(width/4-100, height/2-100, 245, 60);
     image(Suit, width/2+125, height/2-250, 300, 500);
     ADefault = Suit;
   }
   else  if( (mouseX > width/4-100 && mouseX < width/4+145) && (mouseY > height/2-50 && mouseY < height/2+10) )
   {
     rect(width/4-100, height/2-25, 325, 60);
     image(Cowboy, width/2+125, height/2-250, 300, 500);
     ADefault = Cowboy;
   }
   else  if( (mouseX > width/4-100 && mouseX < width/4+145) && (mouseY > height/2+25 && mouseY < height/2+95) )
   {
     rect(width/4-100, height/2+50, 425, 60);
     image(Scavenge, width/2+125, height/2-250, 300, 500);
     ADefault = Scavenge;
   }
   else
   {
     image(ADefault, width/2+125, height/2-250, 300, 500);
   }
   
   //Info at the bottom of the screen
   fill(0, 150, 40);
   rect(15, height-60, 350, 50);//Health
   rect(370, height-60, 220, 50);//Level
   rect(595, height-60, 755, 50);//AP

   fill(40,255,75);
   textFont(startup_font, 40);
   text("WEIGHT     80/140", 20, height-20);
   text("CAPS  602", 375, height-20);
   text("AP 50/120", width-205, height-20);
}

void Aid()                                                                                   //Aid
{
   Menu.Index(); 
 
  //Menu Index Border
   stroke(40, 255, 75);
   line(15, 60, 15, 90);//Left Side
   line(15, 60, 380, 60);
   line(380, 60, 380, 30);
   line(380, 30, 385, 30);
   
   line(495, 30, 500, 30);//Right Side
   line(500, 30, 500, 60);
   line(500, 60, width-15, 60);
   line(width-15, 60, width-15, 90); 
   
   //Sub Index
   textFont(startup_font, 50);
   fill(40,255,75,80);
   text("WEAPONS", 150, 115);
   fill(40,255,75,80);
   text("APPAREL", 440, 115);
   fill(40,255,75,200);
   text("AID", 700, 115);
   fill(40,255,75,80);
   text("MISC", 820, 115);
   
   fill(0, 150, 40, 80);
   if( (mouseX > 150 && mouseX < 400) && (mouseY > 50 && mouseY < 150) )
   {
     rect(145, 70, 265, 55);
   }
   if( (mouseX > 440 && mouseX < 670) && (mouseY > 50 && mouseY < 150) )
   {
     rect(435, 70, 235, 55);
   }
   if( (mouseX > 690 && mouseX < 790) && (mouseY > 50 && mouseY < 150) )
   {
     rect(690, 70, 100, 55);
   }
   if( (mouseX > 815 && mouseX < 950) && (mouseY > 50 && mouseY < 150) )
   {
     rect(815, 70, 140, 55);
   }
   
   textFont(startup_font, 50);
   fill(40,255,75);
   text("Stimpak", width/4-100, height/2-125);
   text("Buffout", width/4-100, height/2-50);
   text("Potato Crisps", width/4-100, height/2+25);
   text("RadX", width/4-100, height/2+100);
   
   fill(0, 150, 40, 80);
   textFont(startup_font, 20);
   if( (mouseX > width/4-105 && mouseX < width/4+85) && (mouseY > height/2-175 && mouseY < height/2-115) )
   {
     rect(width/4-105, height/2-175, 190, 60);
     image(Stimpak, width/2+125, height/2-250, 300, 400);
     fill(40,255,75);
     text("Heals 80 points of health", width/2+125, height/2+150);
     Aid_Default = Stimpak;
     Aid_S_Default = "Heals 80 points of health";
   }
   else  if( (mouseX > width/4-105 && mouseX < width/4+65) && (mouseY > height/2-100 && mouseY < height/2-40) )
   {
     rect(width/4-105, height/2-100, 170, 60);
     image(Buffout, width/2+125, height/2-250, 300, 400);
     fill(40,255,75);
     text("Heals 50 points of health, and +3 to\nStrength temporarily", width/2+125, height/2+150);
     Aid_Default = Buffout;
     Aid_S_Default = "Heals 50 points of health, and +3 to\nStrength temporarily";
   }
   else  if( (mouseX > width/4-105 && mouseX < width/4+205) && (mouseY > height/2-50 && mouseY < height/2+10) )
   {
     rect(width/4-105, height/2-25, 310, 60);
     image(Crisps, width/2+125, height/2-250, 300, 400);
     fill(40,255,75);
     text("Heals 20 points of health, and +7 Rads\nper second", width/2+125, height/2+150);
     Aid_Default = Crisps;
     Aid_S_Default = "Heals 20 points of health, and +7 Rads\nper second";
   }
   else  if( (mouseX > width/4-105 && mouseX < width/4+30) && (mouseY > height/2+25 && mouseY < height/2+95) )
   {
     rect(width/4-105, height/2+50, 135, 60);
     image(Radx, width/2+125, height/2-250, 300, 400);
     fill(40,255,75);
     text("Gives +30% extra rad resistance\nfor 90 seconds", width/2+125, height/2+150);
     Aid_Default = Radx;
     Aid_S_Default = "Gives +30% extra rad resistance\nfor 90 seconds";
   }
   else
   {
     image(Aid_Default, width/2+125, height/2-250, 300, 400);
     fill(40,255,75);
     text(Aid_S_Default, width/2+125, height/2+150);
   }
   
   //Info at the bottom of the screen
   fill(0, 150, 40);
   rect(15, height-60, 350, 50);//Health
   rect(370, height-60, 220, 50);//Level
   rect(595, height-60, 755, 50);//AP

   fill(40,255,75);
   textFont(startup_font, 40);
   text("WEIGHT     80/140", 20, height-20);
   text("CAPS  602", 375, height-20);
   text("AP 50/120", width-205, height-20);
}


void Misc()
{
   Menu.Index(); 
 
  //Menu Index Border
   stroke(40, 255, 75);
   line(15, 60, 15, 90);//Left Side
   line(15, 60, 380, 60);
   line(380, 60, 380, 30);
   line(380, 30, 385, 30);
   
   line(495, 30, 500, 30);//Right Side
   line(500, 30, 500, 60);
   line(500, 60, width-15, 60);
   line(width-15, 60, width-15, 90); 
   
   //Sub Index
   textFont(startup_font, 50);
   fill(40,255,75,80);
   text("WEAPONS", 150, 115);
   fill(40,255,75,80);
   text("APPAREL", 440, 115);
   fill(40,255,75,80);
   text("AID", 700, 115);
   fill(40,255,75,200);
   text("MISC", 820, 115);
  
   fill(0, 150, 40, 80);
   if( (mouseX > 150 && mouseX < 400) && (mouseY > 50 && mouseY < 150) )
   {
     rect(145, 70, 265, 55);
   }
   if( (mouseX > 440 && mouseX < 670) && (mouseY > 50 && mouseY < 150) )
   {
     rect(435, 70, 235, 55);
   }
   if( (mouseX > 690 && mouseX < 790) && (mouseY > 50 && mouseY < 150) )
   {
     rect(690, 70, 100, 55);
   }
   if( (mouseX > 815 && mouseX < 950) && (mouseY > 50 && mouseY < 150) )
   {
     rect(815, 70, 140, 55);
   }
   
   textFont(startup_font, 50);
   fill(40,255,75);
   text("Note", width/4-100, height/2-125);
   text("Holodisk", width/4-100, height/2-50);
   text("Keycard", width/4-100, height/2+25);
   text("Jar", width/4-100, height/2+100);
   text("Processor", width/4-100, height/2+175);

   fill(0, 150, 40, 80);
   textFont(startup_font, 20);
   if( (mouseX > width/4-105 && mouseX < width/4+15) && (mouseY > height/2-175 && mouseY < height/2-115) )
   {
     rect(width/4-105, height/2-175, 120, 60);
     image(Note, width/2, height/2-200, 300, 300);
     fill(40,255,75);
     text("\"If anyone finds this, I am making my way North in an attempt\nto overthrow the Institute, I will make my assault in 4 days. If\nyou have any interest in taking them down, find me \"", width/2, height/2+150); 
     MDefault = Note;
     MDefaultString = "\"If anyone finds this, I am making my way North in an attempt\nto overthrow the Institute, I will make my assault in 4 days. If\nyou have any interest in taking them down, find me \""; 
   }
   else  if( (mouseX > width/4-105 && mouseX < width/4+95) && (mouseY > height/2-100 && mouseY < height/2-40) )
   {
     rect(width/4-105, height/2-100, 200, 60);
     image(Disk, width/2, height/2-200, 300, 300);
     fill(40,255,75);
     text("A holodisk from your son", width/2, height/2+150);
     MDefault = Disk;
     MDefaultString = "A holodisk from your son";
   }
   else  if( (mouseX > width/4-105 && mouseX < width/4+90) && (mouseY > height/2-50 && mouseY < height/2+10) )
   {
     rect(width/4-105, height/2-25, 195, 60);
     image(Keycard, width/2, height/2-200, 300, 300);
     fill(40,255,75);
     text("Will grant you access to Trinity Tower", width/2, height/2+150);
     MDefault = Keycard;
     MDefaultString = "Will grant you access to Trinity Tower";
   }
   else  if( (mouseX > width/4-105 && mouseX < width/4+30) && (mouseY > height/2+25 && mouseY < height/2+95) )
   {
     rect(width/4-105, height/2+50, 80, 60);
     image(Jar, width/2, height/2-200, 300, 300);
     fill(40,255,75);
     text("A jar of suspicous green liquid", width/2, height/2+150);
     MDefault = Jar;
     MDefaultString = "A jar of suspicous green liquid";
   }
   else  if( (mouseX > width/4-105 && mouseX < width/4+135) && (mouseY > height/2+125 && mouseY < height/2+165) )
   {
     rect(width/4-105, height/2+125, 240, 60);
     image(Processor, width/2, height/2-200, 300, 300);
     fill(40,255,75);
     text("A standard computer processor. Use it to fix broken terminals and robots", width/2, height/2+150);
     MDefault = Processor;
     MDefaultString = "A standard computer processor. Use it to fix broken terminals and robots";
   }
   else
   {
     image(MDefault, width/2, height/2-200, 300, 300);
     fill(40,255,75);
     text(MDefaultString, width/2, height/2+150);
   }
   
   //Info at the bottom of the screen
   fill(0, 150, 40);
   rect(15, height-60, 350, 50);//Health
   rect(370, height-60, 220, 50);//Level
   rect(595, height-60, 755, 50);//AP

   fill(40,255,75);
   textFont(startup_font, 40);
   text("WEIGHT     80/140", 20, height-20);
   text("CAPS  602", 375, height-20);
   text("AP 50/120", width-205, height-20);
}

void Data()
{
  if(QCounter < 1)
  {
     QDefault = Institute;
     QDefaultPosW = width/2+50;
     QDefaultPosH = height/4;
     QDefaultSizeW = 500;
     QDefaultSizeH = 300;
     QCounter = 1;
  }
   Menu.Index();
  
   //Menu Index Border
   stroke(40, 255, 75);
   line(15, 60, 15, 90);//Left Side
   line(15, 60, 550, 60);
   line(550, 60, 550, 30);
   line(550, 30, 560, 30);
   
   line(730, 30, 720, 30);//Right Side
   line(730, 30, 730, 60);
   line(730, 60, width-15, 60);
   line(width-15, 60, width-15, 90);  
   
   //Sub Index
   textFont(startup_font, 50);
   fill(40,255,75,200);
   text("QUESTS", 425, 115);
   fill(40,255,75,80);
   text("STATS", 675, 115);
   
   fill(0, 150, 40, 80);
   if( (mouseX > 420 && mouseX < 635) && (mouseY > 70 && mouseY < 125) )
   {
     rect(420, 70, 215, 55);
   }
   if( (mouseX > 670 && mouseX < 830) && (mouseY > 70 && mouseY < 125) )
   {
     rect(670, 70, 160, 55);
   }
   
   textFont(startup_font, 50);
   fill(40,255,75);
   text("Institutionalized", width/5-100, height/2-125);
   text("The Road to Freedom", width/5-100, height/2-50);
   text("Curtain Call", width/5-100, height/2+25);
   text("The Devil's Due", width/5-100, height/2+100);
   
   fill(0, 150, 40, 80);
   textFont(startup_font, 25);
   if( (mouseX > width/5-105 && mouseX < width/5+255) && (mouseY > height/2-170 && mouseY < height/2-110) )
   {
     rect(width/5-105, height/2-170, 355, 55);
     image(Institute, width/2+50, height/4, 500, 300);
     QDefault = Institute;
     QDefaultPosW = width/2+50;
     QDefaultPosH = height/4;
     QDefaultSizeW = 500;
     QDefaultSizeH = 300;
     QDefaultString = "Build the teleporter to gain access to the Institute\nBlow up the reactor within the Institute";
     line(width/2+50, height/2+142, width-90, height/2+142);
     line = true;
     fill(40,255,75);
     text(QDefaultString, width/2+50, height/2+150);
   }
   else if( (mouseX > width/5-105 && mouseX < width/5+395) && (mouseY > height/2-95 && mouseY < height/2-40) )
   {
     rect(width/5-105, height/2-95, 500, 55);
     image(FreedomRoad, width/2+50, height/4, 500, 300);
     QDefault = FreedomRoad;
     QDefaultPosW = width/2+50;
     QDefaultPosH = height/4;
     QDefaultSizeW = 500;
     QDefaultSizeH = 300;
     QDefaultString = "Follow the clues to find 'The RailRoad'";
     fill(40,255,75);
     text(QDefaultString, width/2+50, height/2+150);
     line = false;
   }
   else if( (mouseX > width/5-105 && mouseX < width/5+165) && (mouseY > height/2-20 && mouseY < height/2+35) )
   {
     rect(width/5-105, height/2-20, 270, 55);
     image(CurtainCall, width/2+50, height/4, 500, 300);
     QDefault = CurtainCall;
     QDefaultPosW = width/2+50;
     QDefaultPosH = height/4;
     QDefaultSizeW = 500;
     QDefaultSizeH = 300;     
     QDefaultString = "Investigate the Trinity Tower Radio broadcast";
     fill(40,255,75);
     text(QDefaultString, width/2+50, height/2+150);
     line = false;
   }
   else if( (mouseX > width/5-105 && mouseX < width/5+255) && (mouseY > height/2+55 && mouseY < height/2+110) )
   {
     rect(width/5-105, height/2+55, 360, 55);
     image(Devil, width/2-100, height/4-100, 700, 400);
     QDefault = Devil;
     QDefaultPosW = width/2-100;
     QDefaultPosH = height/4-100;
     QDefaultSizeW = 700;
     QDefaultSizeH = 400;
     QDefaultString = "Investigate the disturbance in the church";
     fill(40,255,75);
     text(QDefaultString, width/2+50, height/2+150);
     line = false;
   }
   else
   {
     image(QDefault, QDefaultPosW, QDefaultPosH, QDefaultSizeW, QDefaultSizeH);
     textFont(startup_font, 25);
     fill(40,255,75);
     text(QDefaultString, width/2+50, height/2+150);
     
     if(line == true)
     {
       line(width/2+50, height/2+142, width-90, height/2+142);
     }
   }
}

void Stats()
{
  Menu.Index(); 
  
  //Menu Index Border
   stroke(40, 255, 75);
   line(15, 60, 15, 90);//Left Side
   line(15, 60, 550, 60);
   line(550, 60, 550, 30);
   line(550, 30, 560, 30);
   
   line(730, 30, 720, 30);//Right Side
   line(730, 30, 730, 60);
   line(730, 60, width-15, 60);
   line(width-15, 60, width-15, 90);  
   
   //Sub Index
   textFont(startup_font, 50);
   fill(40,255,75,80);
   text("QUESTS", 425, 115);
   fill(40,255,75,200);
   text("STATS", 675, 115);
   
   fill(0, 150, 40, 80);
   if( (mouseX > 420 && mouseX < 635) && (mouseY > 70 && mouseY < 125) )
   {
     rect(420, 70, 215, 55);
   }
   if( (mouseX > 670 && mouseX < 830) && (mouseY > 70 && mouseY < 125) )
   {
     rect(670, 70, 160, 55);
   }
   
   rect(width/6, height/6+50, 900, 500);
   
   for(int i=0; i < 11; i++)
   {
      line(width/6, height/6+50 +(50*i), width/6+900, height/6+50 +(50*i));
   }
   
   Statistics();
}
void Map()
{
  Menu.Index();
  
  //Menu Index Border
   stroke(40, 255, 75);
   line(15, 60, 15, 90);//Left Side
   line(15, 60, width/2+90, 60);
   line(width/2+90, 60, width/2+90, 30);
   line(width/2+90, 30, width/2+100, 30);
   
   line(width/2+250, 30, width/2+240, 30);//Right Side
   line(width/2+250, 30, width/2+250, 60);
   line(width/2+250, 60, width-15, 60);
   line(width-15, 60, width-15, 90);

   image(Map, 85, 100, 1200, 650);
   
   textFont(startup_font, 20);
   noFill();
   if((mouseX > width/2+5 && mouseX < width/2+75) && (mouseY > height/2-15 && mouseY < height/2+35))
   {
     text("Trinity", width/2+15, height/2+50);
     text("Headquaters", width/2-15, height/2+70);
   }
   if((mouseX > width/2-100 && mouseX < width/2-5) && (mouseY > height/2-170 && mouseY < height/2-100))
   {
     text("Christ Church", width/2-115, height/2-80);
   }
   if((mouseX > width/4-200 && mouseX < width/4-105) && (mouseY > height/2+230 && mouseY < height/2+300))
   {
     text("Barley Swamp", width/4-215, height/2+320);
   }
   if((mouseX > width/4+90 && mouseX < width/4+185) && (mouseY > height/2+60 && mouseY < height/2+130))
   {
     text("Diamond City", width/4+85, height/2+150);
   }   
   if((mouseX > width/2-97 && mouseX < width/2-55) && (mouseY > height/2+60 && mouseY < height/2+95))
   {
     text("You", width/2-95, height/2+110);
   }
}
void Radio()
{
  Menu.Index();
  
   //Menu Index Border
   stroke(40, 255, 75);
   line(15, 60, 15, 90);//Left Side
   line(15, 60, width-390, 60);
   line(width-390, 60, width-390, 30);
   line(width-390, 30, width-380, 30);
   
   line(width-180, 30, width-170, 30);//Right Side
   line(width-170, 30, width-170, 60);
   line(width-170, 60, width-15, 60);
   line(width-15, 60, width-15, 90);
      
   textFont(startup_font, 40);
   fill(40,255,75);
   text("Classic Radio", width/4-200, height/2-150);
   text("Diamond City Radio", width/4-200, height/2-75);
   text("Military Frequency FM90", width/4-200, height/2);
   
   fill(0, 150, 40, 80);
   if( (mouseX > width/5-140 && mouseX < width/5+120) && (mouseY > height/4 && mouseY < height/4+55) )
   {
     rect(width/5-140, height/4, 260, 55);
   }
   if( (mouseX > width/5-140 && mouseX < width/5+230) && (mouseY > height/4+75 && mouseY < height/4+130) )
   {
     rect(width/5-140, height/4+75, 370, 55);
   }
   if( (mouseX > width/5-140 && mouseX < width/5+315) && (mouseY > height/4+150 && mouseY < height/4+205) )
   {
     rect(width/5-140, height/4+150, 455, 55);
   }
   
   noFill();
   line(width-200, height/3-100, width-200, height/3+300);
   line(width-700, height/3+300, width-200, height/3+300);
   
   fill(40,255,75);
   if(radio_counter == 0)
   {
     for (float x = 32; x < 8.75*TWO_PI; x+=0.02) 
     {
       // Calculate value
       float y = sin(x+frameCount*0);   // Render wave using ellipse.
       ellipse(x*21,height/2.25+y*0,5, 5);
     }
   }
   else if(radio_counter == 1)
   {
     for (float x = 32; x < 8.75*TWO_PI; x+=0.02) 
     {
       // Calculate value
       float y = sin(x+frameCount*0.12);   //Radio Waves
       ellipse(x*21,height/2.25+y*60,5, 5);
     }  
           
     rect(width/5-160, height/4+20, 15, 15);

   }
   else if(radio_counter == 2)
   {
     for (float x = 32; x < 8.75*TWO_PI; x+=0.02) 
     {
       // Calculate value
       float y = sin(x+frameCount*0.2);   
       ellipse(x*21,height/2.25+y*30,5, 5);
     }   
     
      rect(width/5-160, height/4+95, 15, 15);
          
   }
   else if(radio_counter == 3)
   {
     for (float x = 32; x < 8.75*TWO_PI; x+=0.02) 
     {
       // Calculate value
       float y = sin(x+frameCount*0.4);   
       ellipse(x*21,height/2.25+y*100,5, 5);
     }
     
       rect(width/5-160, height/4+170, 15, 15);
           
   }
}