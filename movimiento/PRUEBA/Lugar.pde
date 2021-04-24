class Zona
{
  color contagiado = #FF0000;
  color curado = #00FF00;
  color sano = #ffffff;
  int d = 10;
  int posicion_x, posicion_y, ancho, largo, infectados = 1;
  Bola[] bolas;
  boolean tieneCuarentena;
  // Cuarentena cuarentena;

  Zona(Bola[] bolas)
  {
   // this.posicion_x = x;
   // this.posicion_y = y;
    // this.ancho = ancho;
    // this.largo = largo;
    this.bolas = bolas;
    // this.tieneCuarentena = tieneCuarentena;
  }

  void crearBolitas()
  {
    for (int i=0; i<this.bolas.length; i++) {
      this.bolas[i] = new Bola (random(width),(random(height)), sano);
    }
  }
  void infectarPrimera()
  {
    //infecta primera bola
    this.bolas[0].infectar(contagiado);
  }
  
  void infectarCercana(Bola[] bol)
  {
      for (int i=0; i<this.bolas.length; i++) {
        
        for (int j=0; j<this.bolas.length; j++) {
            int distancia = (int) dist(bol[i].posicion.x, bol[i].posicion.y, bol[j].posicion.x,bol[j].posicion.y);
            
            if(i != j && distancia<=d)
            {
             if(this.bolas[i].infectado && !this.bolas[j].infectado)
             {
               this.bolas[j].infectar(contagiado);
               this.infectados++;
             }
            }
        }
      }
    }
    
    int cantidadContagiados(){
     return infectados; 
    }
}
