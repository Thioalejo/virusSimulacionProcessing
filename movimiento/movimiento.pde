float x;
float y;
boolean estado = true;
boolean estado2 = true;
int cantidadBolitas = 10;
color contagiado = #FF0000;
color curado = #00FF00;
color sano = #ffffff;
float d = 50;
bolita[] bolitas = new bolita[10];

void setup()
{
  //se ejecuta unica vez
 size(800,600);
  
  for (int i=0; i<bolitas.length; i++){
    bolitas[i] = new bolita (random(width),(random(height)),sano);
  } 
}


void draw(){
  background(0,0,0);
  for(int i=1; i<bolitas.length; i++){
    bolitas[i].pintarBolita();
    bolitas[i].moverBolita();
    bolitas[i].colision();
  }
}
