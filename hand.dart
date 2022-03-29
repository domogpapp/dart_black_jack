import 'card.dart';

class Hand {
  List<Card> cards = [];

  void addCard(Card card) {
    cards.add(card);
  }

  Set<int> getHandValue() {
    Set<int> result = Set.from([0]);

    for (Card card in cards) {
      List<int> cardValue = card.cardValue();
      Set<int> newResult = Set.from([]);

      for (int value in result) {
        if (cardValue.length > 1) newResult.add(cardValue[1] + value);

        newResult.add(cardValue[0] + value);
      }
      result = Set.from(newResult);
    }

    return result;
  }

  @override
  String toString() {
    // TODO: implement toString

    String result = "";

    for (Card card in cards) {
      result += card.toString() + " ";
    }
    return result;
  }
}
