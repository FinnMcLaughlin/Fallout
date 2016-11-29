class Menu
{
  Menu()
  {
    Index();
  }
  
  void Index()
  {
    startup_font = createFont("Monofonto",16,true);

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
  }
}