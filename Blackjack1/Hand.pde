/* 
 eine Hand ist eine Menge von Karten
 typischerweise gibt es eine Hand des players und eine Hand des dealers
 sie kann an einer bestimmten Position gezeigt werden
 */

public class Hand {
  LinkedList<Karte> hand; 
  float x;
  float y;
  String bezeichnung;

  public Hand(float x, float y, String bezeichnung) {
    hand = new LinkedList<Karte>();
    this.x = x;
    this.y = y;
    this.bezeichnung = bezeichnung;
  }


  public void display() {
    fill(0);
 //   textSize(20);
    text(bezeichnung, x, y-20);
    int xAbstand = 0;
    int yAbstand = 0;
    for (Karte k : hand) {
      k.display(x+xAbstand, y+yAbstand);
      xAbstand+= 16;
      yAbstand+= 40;
    }
  }

  public void nimm(Blatt b) {
    hand.add(b.gib());
  }

  public void nimm(Karte k) {
    hand.add(k);
  }
}


