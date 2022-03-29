class Card {
  String color;
  String value;

  Card({this.color, this.value});

  @override
  toString() {
    return (value + color);
  }

  List<int> cardValue() {
    if (value == "A") return [1, 11];
    if (value == "T" || value == "J" || value == "Q" || value == "K")
      return [10];
    else
      return [int.parse(value)];
  }

  static List<String> colors = ["♥", "♦", "♠", "♣"];

  static List<String> values = [
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "T",
    "J",
    "Q",
    "K",
    "A"
  ];
}
