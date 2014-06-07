/*
Die Ablauflogik von Blackjack
 Dealer und Player bekommen zu Beginn 2 Karten. Die Karten des Players liegen offen, von den
 Karten des Dealers ist nur eine offen. Der Player kann dann vom Deck weitere nehmen
 "hit the hand", wenn er über 21 hat ist er "busted" und hat sofort verloren. Er kann vorher 
 aufhören "stand". Der Dealer wird dann seine Hand soweit füllen, bis er 17 oder mehr hat.
 Wenn der dealer busts, gwinnt der Player, bei Unentschieden gewinnt der dealer
 */


import java.util.*;
PImage cards, cardBack;


Karte k1;
Blatt b;
Hand dealer, player;

boolean dealerDran;
boolean playerDran;
boolean playerStands;

String[] farbe = {
  "Kreuz", "Pik", "Herz", "Karo"
};
String[] wert = {
  "Ass", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Bube", "Dame", "König"
};

Map<String, Integer> farbmap = new HashMap<String, Integer>();
Map<String, Integer> wertmap = new HashMap<String, Integer>();
void setup() {
  size(600, 400);
  PFont font = loadFont("SegoeUI-32.vlw");   // Font erzeugen und
  textFont(font);                            // als Textfont setzen

  fillMaps();
  cards = loadImage("cards.png");
  cardBack =  loadImage("card_back.png");
  b = new Blatt();
  b.shuffle();
}

void draw() {
  background(255);

  dealer = new Hand(50, 50, "Dealer");
  player = new Hand(300, 50, "Player");

  dealer.nimm(b);
  Karte k = b.gib();
  k.verdeckt = true;
  dealer.nimm(k);
  player.nimm(b);
  player.nimm(b);
  dealer.display();
  player.display();

  noLoop();
}

void fillMaps() {
  farbmap.put("Kreuz", 0);
  farbmap.put("Pik", 1);
  farbmap.put("Herz", 2);
  farbmap.put("Karo", 3);

  wertmap.put("Ass", 0);
  wertmap.put("2", 1);
  wertmap.put("3", 2);
  wertmap.put("4", 3);
  wertmap.put("5", 4);
  wertmap.put("6", 5);
  wertmap.put("7", 6);
  wertmap.put("8", 7);
  wertmap.put("9", 8);
  wertmap.put("10", 9);
  wertmap.put("Bube", 10);
  wertmap.put("Dame", 11);
  wertmap.put("König", 12);
}

void keyReleased() {
  if (key == 'h') {
//    println("ja");
//    player.nimm(b);
  }
}

