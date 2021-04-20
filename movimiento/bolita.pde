class bolita
{
  //Declaramos
  float x;
  float y;
  color c;
  boolean estado = true;
  boolean estado2 = true;
  boolean prueba = true;

  bolita(float posicion_x, float posicion_y, color colorDeBola)
  {
      x = posicion_x;
      y = posicion_y;
      c = colorDeBola;
   }
  
  void pintarBolita(int n)
  {
    fill(c);
    stroke(50);
    ellipse(x,y,20,20);
  }

 void moverBolita()
  {
   if(estado ==true)
     {
       x++;
       if(x>785)
       {
         estado = false;
       }
     }else
     {
       x--;
       if(x<15)
       {
         estado = true;
       }
     }
     
      if(estado2 ==true)
     {
       y++;
       if(y>590)
       {
         estado2 = false;
       }
     }else
     {
       y--;
       if(y<15)
       {
         estado2 = true;
       }
     }
  }
}
