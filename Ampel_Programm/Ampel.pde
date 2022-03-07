class Ampel
{
  private String zustand;
  // Bild für die Anzeige
  PImage ampel_rot = loadImage("ampel_rot.jpg");
  PImage ampel_gelb = loadImage("ampel_gelb.jpg");
  PImage ampel_rot_gelb = loadImage("ampel_rot_gelb.jpg");
  PImage ampel_gruen = loadImage("ampel_gruen.jpg");
 
  
  Ampel()
  {
    zustand = "rot";
  }
  
  void anzeigen()
  {
    if (zustand.equals("rot"))
    {
      image(ampel_rot,0,0);
    }
    if (zustand.equals("rotgelb"))
    {
      image(ampel_rot_gelb,0,0);
    }
    if (zustand.equals("gruen"))
    {
      image(ampel_gruen,0,0);
    }
    if (zustand.equals("gelb"))
    {
      image(ampel_gelb,0,0);
    }
  }
  
  void umschalten()
  {
    if (zustand.equals("rot"))
    {
      zustand = "rotgelb";
    }
    else if (zustand.equals("rotgelb"))
    {
      zustand = "gruen";
    }
    else if (zustand.equals("gruen"))
    {
      zustand = "gelb";
    }
    else
    {
      zustand = "rot";
    }
  } 
}
