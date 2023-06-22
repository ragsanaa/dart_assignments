class Message {
  String sender;
  String recipient;
  DateTime timestamp;
  Message({
    required this.sender,
    required this.recipient,
    required this.timestamp,
  });
}

class ChatApp<T extends Message>{
  List<T> messages = [];

  void addMessage(T message){
    messages.add(message);
  }

  void countOfTotalMEssages(){
    print("There are ${messages.length} messages!");
  }

  void displayMessages(){
    for (Message m in messages) {
      print("Sender: ${m.sender}\nRecipient: ${m.recipient}\nTime: ${m.timestamp}");
      if(m is TextMessage) print("Message: ${m.text}\n");
      else if(m is ImageMessage) print("Message: ${m.imageUrl}\n");
      else if(m is AudioMessage) print("Message: ${m.audioUrl} ${m.duration}\n");
    }
  }
}

class TextMessage extends Message {
  String text;
  TextMessage({
    required super.sender,
    required super.recipient,
    required super.timestamp,
    required this.text,
  });
}

class ImageMessage extends Message {
  String imageUrl;
  ImageMessage({
    required super.sender,
    required super.recipient,
    required super.timestamp,
    required this.imageUrl,
  });
}

class AudioMessage extends Message {
  String audioUrl;
  double duration;
  AudioMessage({
    required super.sender,
    required super.recipient,
    required super.timestamp,
    required this.audioUrl,
    required this.duration,
  });
}
