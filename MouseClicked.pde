void mouseClicked()
{                                                                                                 
//-------------------------------------------------------------------------------------------------Status
  if( menu_counter >= 0 && menu_counter < 3)
  {
   if( (mouseX > 150 && mouseX < 350) && (mouseY > 50 && mouseY < 150) )
   {
     menu_counter = 0;
   }
   if( (mouseX > 365 && mouseX < 515) && (mouseY > 50 && mouseY < 150) )
   {
     menu_counter = 1;
   }
   if( (mouseX > 600 && mouseX < 800) && (mouseY > 50 && mouseY < 150) )
   {
     menu_counter = 2;
   }
   if( (mouseX > 390 && mouseX < 490) && (mouseY > 5 && mouseY < 40) )
   {
     menu_counter = 3;
   }
   if( (mouseX > 565 && mouseX < 715) && (mouseY > 5 && mouseY < 40) )
   {
      menu_counter = 6;
   }
   if( (mouseX > 790 && mouseX < 920) && (mouseY > 5 && mouseY < 55) )
   {
      menu_counter = 9;
   }
   if( (mouseX > 990 && mouseX < 1100) && (mouseY > 5 && mouseY < 40) )
   {
      menu_counter = 10;
   }
  }
  
  if( (mouseX > 15 && mouseX < 215) && (mouseY > height-130 && mouseY < height-80) )
  {
    stimp_count = 0; 
  }
  
//-------------------------------------------------------------------------------------------Inventory  
  if( menu_counter >= 3 && menu_counter < 7 )
  {
    if( (mouseX > 180  && mouseX < 325) && (mouseY > 5 && mouseY < 40) )
    {
      menu_counter = 0;
    }
    else if( (mouseX > 145 && mouseX < 400) && (mouseY > 70 && mouseY < 125) )
    {
      menu_counter = 3;
    }
    else if( (mouseX > 435 && mouseX < 670) && (mouseY > 70 && mouseY < 125) )
    {
      menu_counter = 4;
    }
    else if( (mouseX >  690 && mouseX < 790) && (mouseY > 70 && mouseY < 125) )
    {
      menu_counter = 5;
    }
    else if( (mouseX > 815 && mouseX < 950) && (mouseY > 70 && mouseY < 125) )
    {
      menu_counter = 6;
    }
    else if( (mouseX > 565 && mouseX < 715) && (mouseY > 5 && mouseY < 40) )
    {
        menu_counter = 7;
    }
    if( (mouseX > 790 && mouseX < 920) && (mouseY > 5 && mouseY < 55) )
    {
      menu_counter = 9;
    }
    else if( (mouseX > 990 && mouseX < 1100) && (mouseY > 5 && mouseY < 40) )
    {
      menu_counter = 10;
    }
  }
//---------------------------------------------------------------------------------------------Data  
  if(menu_counter >= 7 && menu_counter <= 8)
  {
    if( (mouseX > 180  && mouseX < 325) && (mouseY > 5 && mouseY < 40) )
     {
        menu_counter = 0;
     }
    if( (mouseX > 390 && mouseX < 490) && (mouseY > 5 && mouseY < 40) )
     {
       menu_counter = 3;
     }
     if( (mouseX > 420 && mouseX < 635) && (mouseY > 70 && mouseY < 125) )
     {
       menu_counter = 7;
     }
     if( (mouseX > 670 && mouseX < 830) && (mouseY > 70 && mouseY < 125) )
     {
       menu_counter = 8;
     }
     if( (mouseX > 790 && mouseX < 920) && (mouseY > 5 && mouseY < 55) )
     {
      menu_counter = 9;
     }
    if( (mouseX > 990 && mouseX < 1100) && (mouseY > 5 && mouseY < 40) )
     {
       menu_counter = 10;
     }
  }
//------------------------------------------------------------------------------------------------Map
  if(menu_counter == 9)
  {
    if( (mouseX > 180  && mouseX < 325) && (mouseY > 5 && mouseY < 40) )
    {
      menu_counter = 0;
    }
    if( (mouseX > 390 && mouseX < 490) && (mouseY > 5 && mouseY < 40) )
    {
      menu_counter = 3;
    }
    if( (mouseX > 565 && mouseX < 715) && (mouseY > 5 && mouseY < 40) )
    {
      menu_counter = 7;
    }
    if( (mouseX > 990 && mouseX < 1100) && (mouseY > 5 && mouseY < 40) )
    {
      menu_counter = 10;
    }
  } 
//------------------------------------------------------------------------------------------------Radio   
  if(menu_counter >= 10)                                                                                    
  {
    if( (mouseX > 180  && mouseX < 325) && (mouseY > 5 && mouseY < 40) )
    {
      menu_counter = 0;
    }
    if( (mouseX > 390 && mouseX < 490) && (mouseY > 5 && mouseY < 40) )
    {
      menu_counter = 3;
    }
    if( (mouseX > 565 && mouseX < 715) && (mouseY > 5 && mouseY < 40) )
    {
      menu_counter = 7;
    }
    if( (mouseX > 790 && mouseX < 920) && (mouseY > 5 && mouseY < 55) )
    {
      menu_counter = 9;
    }
    
    if( (mouseX > width/5-140 && mouseX < width/5+120) && (mouseY > height/4 && mouseY < height/4+55) )
    {
      if(radio_counter == 1)
      {
        Classic.stop();
        radio_counter = 0;
      }
      else
      {
       radio_counter = 1;
       Classic.cue(300);
       Classic.loop();
       Atom.stop();
       Static.stop();
      }
    }
    else if(  (mouseX > width/5-140 && mouseX < width/5+230) && (mouseY > height/4+75 && mouseY < height/4+130) )
    {
      if(radio_counter == 2)
      {
        radio_counter = 0;
        Atom.stop();
      }
      else
      {
        radio_counter = 2;
        Atom.cue(5);
        Atom.loop();
        Classic.stop();
        Static.stop();
      }
    }
    else if(  (mouseX > width/5-140 && mouseX < width/5+315) && (mouseY > height/4+150 && mouseY < height/4+205) )
    {
      if(radio_counter == 3)
      {
        radio_counter = 0;
        Static.stop();
      }
      else
      {
        radio_counter = 3;
        Static.cue(20);
        Static.loop();
        Atom.stop();
        Classic.stop();
      }
    }
  }
}