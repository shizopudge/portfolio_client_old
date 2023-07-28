import 'capitalize_first_letter.dart';
import '../domain/entities/failure/failure.dart';

extension FailureMessageToString on Failure {
  String messageToString() {
    if (message is List) {
      List<String> messageItems = [];
      for (int i = 0; i < message.length; i++) {
        messageItems.add(i == 0
            ? message[i].toString().capitalizeFirstLetter()
            : message[i].toString());
      }
      return messageItems.join(', ');
    } else {
      return message.toString().capitalizeFirstLetter();
    }
  }
}
