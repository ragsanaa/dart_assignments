import 'model/classes.dart';

void main(List<String> args) {
  ChatApp chatApp = ChatApp();
  chatApp.addMessage(TextMessage(sender: "Jake", recipient: "Gerda", timestamp: DateTime.now(), text: "Hello. How are you?"));
  chatApp.addMessage(ImageMessage(sender: "Johnny", recipient: "Kate", timestamp: DateTime.now(), imageUrl: "www.pixabay.com/flowers"));
  chatApp.addMessage(AudioMessage(sender: "Gerda", recipient: "Kate", timestamp: DateTime.now(), audioUrl: "www.youtube.com/2fefdfadad", duration: 3.45));

  chatApp.countOfTotalMEssages();
  chatApp.displayMessages();

}
