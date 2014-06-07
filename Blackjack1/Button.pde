public class Button {
  PVector pos;
  int laenge;
  int breite;
  String text;
  color farbe;

  public Button(float x, float y, int laenge, int breite, String text) {
    pos = new PVector(x, y, 0);
    farbe = #A6F540;
    this.laenge = laenge;
    this.breite = breite;
    this.text = text;
  }

  public void display() {
  
    fill(farbe);
    rect(pos.x, pos.y, laenge, breite);


    fill(0);
   

    text(text, pos.x+5, pos.y+18);
  }
}

