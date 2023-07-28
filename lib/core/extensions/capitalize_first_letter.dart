extension CapitalizeFirstLetter on String {
  String capitalizeFirstLetter() {
    List<String> msg = split('');
    msg[0] = msg[0].toUpperCase();

    return msg.join();
  }
}
