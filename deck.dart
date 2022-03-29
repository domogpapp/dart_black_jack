import 'card.dart';

class Deck {
  List<Card> cards = [];

  Deck() {
    Card.colors.forEach((color) {
      Card.values.forEach((name) {
        cards.add(new Card(color: color, value: name));
      });
    });
  }

  void shuffle() {
    cards.shuffle();
  }

  Card drawCard() {
    Card card = cards[0];
    cards.removeAt(0);

    return card;
  }

  printDeck() {
    String res = "Deck:";
    int cnt = 0;
    cards.forEach((card) {
      if (cnt % 13 == 0) res += "\n";

      cnt++;
      res += card.toString() + ",";
    });
    print(res);
  }
}
