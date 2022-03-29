import 'dart:io';

import 'deck.dart';
import 'player.dart';
import 'hand.dart';
import 'card.dart';
import 'dealer.dart';

void main() {
  Deck myDeck = new Deck();
  Player domo = new Player(name: "Domongúz", hand: new Hand());
  Dealer dealer = new Dealer(name: "Ottó", hand: new Hand());

  myDeck.shuffle();
  myDeck.printDeck();
  dealer.addCard(myDeck.drawCard());

  domo.addCard(myDeck.drawCard());
  dealer.addCard(myDeck.drawCard());
  domo.addCard(myDeck.drawCard());

  print(domo);

  for (int i = 0; i < 52; i++) {
    print("Dear " +
        domo.name +
        ", would you like to draw anopenother card? (Y/N)");
    var answer = stdin.readLineSync();
    if (answer != 'Y' && answer != 'y') break;

    Card card = myDeck.drawCard();

    domo.addCard(card);
    print(domo);

    if (domo.isInNotBusted() == false) {
      print("Dear " + domo.name + " you are busted!");
      break;
    }

    // myDeck.printDeck();
  }

  // dealer turn
  while (true) {
    dealer.showCards = true;

    print(dealer);
    List<int> values = dealer.hand.getHandValue().toList();
    values.sort();
    if (values.last <= 16) {
      Card card = myDeck.drawCard();
      dealer.addCard(card);
    } else {
      break;
    }
  }
}
