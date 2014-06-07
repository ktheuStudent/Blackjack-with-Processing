public class Blatt {
  LinkedList<Karte> blatt = new LinkedList<Karte>();

  public Blatt() {
    for (int i=0; i<4; i++) {
      for (int j=0; j<12; j++) {
        blatt.add(new Karte(farbe[i], wert[j]));
      }
    }
  }
  
  public void display() {
    int x = 40;
    int y = 30;
    for (Karte k: blatt) {
      k.display(x,y);
      x += 5;
      y += 15;
    }
  }
  
  public void shuffle() {
    Collections.shuffle(blatt);
  }
    
  public Karte gib() {
    return blatt.poll();
  }
  
  public int size() {
    return blatt.size();
  }
}

