import 'player.dart';
import 'hand.dart';

class Dealer extends Player {
  bool showCards = false;

  Dealer({String name, Hand hand}) : super(name: name, hand: hand);

  @override
  String toString() {
    String result;
    List<int> values=  hand.getHandValue().toList();
    values.sort();
  
    if (showCards)
      result = "Dealer " +
          name +
          " has hand: " +
          hand.toString() +
          "value " +
          values.toString();
    else
      result = "Dealer " +
          name +
          " has hand: " +
          hand.cards[0].toString() +
          " + ? value ?";

    return result;
  }
}
