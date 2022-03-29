import 'hand.dart';
import 'card.dart';

class Player {
  String name;
  Hand hand;

  Player({this.name, this.hand});

  void addCard(Card card) {
    hand.addCard(card);
  }

  bool isInNotBusted() {
    List<int> values = hand.getHandValue().toList();
    values.sort();

    if (values[0] > 21) {
      return false;
    }
    return true;
  }

  @override
  String toString() {
    // TODO: implement toString

    List<int> values=  hand.getHandValue().toList();
    values.sort();
    String result = "Player " +
        name +
        " has hand: " +
        hand.toString() +
        "value " +
        hand.getHandValue().toString();

    return result;
  }
}
