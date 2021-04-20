float x;
float y;
boolean estado = true;
boolean estado2 = true;
int cantidadBolitas = 10;
bolita[] bolitas = new bolita[10];

void setup()
{
  //se ejecuta unica vez
 size(800,600);
  
  for (int i=0; i<bolitas.length; i++){
    bolitas[i] = new bolita (random(width),(random(height)),#ffffff);
  } 
}


void draw(){
  background(0,0,255);
  for(int i=1; i<bolitas.length; i++){
    bolitas[i].pintarBolita(2);
    bolitas[i].moverBolita();
  }
}
