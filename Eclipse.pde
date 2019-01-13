// Eclipse @ NIGHT

//Canvas Setup
void setup() {
  size(960, 540); 
  noStroke();
  rectMode(CENTER);
} 
// Variablen deklaration
int bGround_red;
int bGround_green;
int bGround_blue;
int s_one;
int less_black;

// Zeichnen der Objekte
void draw() {

  int s = second();  // Werte von 0 - 59
  int night_time = minute();  // Werte von 0 - 59 Sekundenzähler für Farbänderung vom Hintergrund
  int night_time_one = night_time + 30;  // Parameter optimierung
  int s_one = (s + 1) * 3; // Faktor drei zur Erhöhung des Farbwechsels
  int s_plus = s_one + 50; // Intensiviert die Farben

// Zuweisung der Farben
less_black = s_one + 50; // Noch mehr Farbintensität
bGround_blue = 255 - s_one;

// Animation der Objekte
background(bGround_red, bGround_green, bGround_blue); // Farbe des Hintergrunds zuweisen 
  fill(195, 195, 15); // Die Sonne !
  ellipse(mouseX, height/2, mouseY/2-50, mouseY/2-50);
  fill(255, 204); // The Moon 
  int inverseX = width-mouseX;  // Maussteuerung für Position der Gestirne!
  int inverseY = height-mouseY; // Ändert die Größe der Gestirne 
  ellipse(inverseX, height/2, (inverseY/2)+50, (inverseY/2)+50); // (Umgekehrt proportional)
}
