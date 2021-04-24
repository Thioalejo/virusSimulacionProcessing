class Bola
{
  color c;
  color contagiado = #FF0000;
  color curado = #00FF00;
  color sano = #ffffff;
  float r, g, b;
  PVector posicion;
  PVector velocity;
  float tamano_bola = 30;
  boolean infectado;
  
  boolean estado = true;
  boolean estado2 = true;
  
  Bola(float posicion_x, float posicion_y, color coloB)
  {
    this.posicion = new PVector(posicion_x, posicion_y);
    this.c = coloB;
  }
  
  void dibujarBola(){
     fill(this.c);
     ellipse(posicion.x,posicion.y,tamano_bola,tamano_bola);
  }
  
  void moverBolita()
  {
   if(estado ==true)
     {
       posicion.x++;;
       if(posicion.x>785)
       {
         estado = false;
       }
     }else
     {
       posicion.x--;
       if(posicion.x<15)
       {
         estado = true;
       }
     }
     
      if(estado2 ==true)
     {
       posicion.y++;
       if(posicion.y>590)
       {
         estado2 = false;
       }
     }else
     {
       posicion.y--;
       if(posicion.y<15)
       {
         estado2 = true;
       }
     }
  }
  
    void infectar(color colorInfec)
    {
      this.c = colorInfec;
      this.infectado = true;
    }
}
