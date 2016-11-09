class Special
{
  String Default;
  float DefaultPosW;
  float DefaultPosH;
  int DefaultSizeW;
  int DefaultSizeH;
  float rect_i;
  float rect_j;
  String DefaultString;
  

  
  
  Special(String Default, float DefaultPosW, float DefaultPosH, int DefaultSizeW, int DefaultSizeH, float rect_i, float rect_j, String DefaultString)
  {
    this.Default = Default;
    this.DefaultPosW = DefaultPosW;
    this.DefaultPosH = DefaultPosH;
    this.DefaultSizeW = DefaultSizeW;
    this.DefaultSizeH = DefaultSizeH;
    this.rect_i = rect_i;
    this.rect_j = rect_j;
    this.DefaultString = DefaultString;
  }
  
  String toString()
  {
    return Default + "\t" + DefaultPosW + "\t" + DefaultPosH + "\t" + DefaultSizeW + "\t" + DefaultSizeH + "\t" + rect_i + "\t" + rect_j + "\t" + DefaultString;
  }
}