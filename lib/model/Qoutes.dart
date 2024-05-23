import 'dart:math';
class Qoutes {
  List<String> qoutes = [
    "Trust the process",
    "Don't stop until you're proud",
    "Strive for progress not perfection"
  ];
  get qoute {
    Random random = Random();
    int randomIndex = random.nextInt(qoutes.length);
    String randomString = qoutes[randomIndex];
    return randomString;
  }
}