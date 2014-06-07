public class Karte {

  final static int CARD_HEIGHT = 98;
  final static int CARD_WIDTH = 73;

  String farbe;
  String wert;
  PImage bild;
  boolean verdeckt;


  public Karte(String farbe, String wert) {
    this.farbe = farbe;
    this.wert = wert;
    int farbIndex = farbmap.get(farbe);
    int wertIndex = wertmap.get(wert);
    bild = cards.get(wertIndex*CARD_WIDTH, farbIndex*CARD_HEIGHT, CARD_WIDTH, CARD_HEIGHT);
    verdeckt = false;
  }

  public String toString() {
    return farbe + " " + wert;
  }

  public void display() {
    display(width/2, height/2);
  }

  public void display(float x, float y) {
    if (verdeckt) image(cardBack, x, y); 
    else
      image(bild, x, y);
  }
}

