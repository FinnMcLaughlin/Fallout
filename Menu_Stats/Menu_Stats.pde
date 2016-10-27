void setup()
{
  fullScreen();
  background(0,51,20,40);
  for(int i=0; i < height; i+=10)
  {
    stroke(0,50);
    line(0, i, width, i);
  }
  
  startup_font = createFont("Monofonto",16,true);
}
 
 PFont startup_font;

 void draw()
 {
   background(0,51,20,40);
  for(int i=0; i < height; i+=10)
  {
    stroke(0,50);
    line(0, i, width, i);
  }
   
   fill(40,255,75);
   textFont(startup_font, 60);
   text("STAT", 180, 50);
   text("INV", 390, 50);
   text("DATA", 565, 50);
   text("MAP", 790, 50);
   text("RADIO", 990, 50);
   
   stroke(40, 255, 75);
   line(15, 60, 15, 90);
   line(15, 60, 170, 60);
   line(170, 60, 170, 30);
   line(170, 30, 175, 30);
   
   line(330, 30, 335, 30);
   line(335, 30, 335, 60);
   line(335, 60, width-15, 60);
   line(width-15, 60, width-15, 90);
   
   fill(30, 120, 45);
   rect(15, height-60, 300, 50);
   rect(320, height-60, 650, 50);
   rect(975, height-60, 375, 50);

   fill(40,255,75);
   textFont(startup_font, 40);
   text("HP 75/135", 20, height-20);
   
   Status();
 }
 
 void Status()
 {
   
 }