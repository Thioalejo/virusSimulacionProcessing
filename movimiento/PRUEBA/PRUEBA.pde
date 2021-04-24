Bola[] bola = new Bola[30];
Zona zona;
void setup() {
  size(800,600);
  
  zona = new Zona(bola);  zona.crearBolitas();
  zona.infectarPrimera();;}

void draw() {
  background(51);
  for(int i=0; i<bola.length; i++){
    bola[i].dibujarBola();
    bola[i].moverBolita();
    zona.infectarCercana(bola);
    textSize(25);
    text("Infectados: " + zona.cantidadContagiados(),10,30);
  }
}
