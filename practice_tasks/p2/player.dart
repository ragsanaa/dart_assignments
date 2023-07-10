abstract class Playable{
  void play();
  void pause();
  void stop();
}

class MediaFile implements Playable {
  String title;
  double duration;
  String filePath;
  MediaFile(this.title, this.duration, this.filePath);

  @override
  void pause() {
    print("\tPaused $title");
  }

  @override
  void play() {
    print("\tPlaying $title");
  }

  @override
  void stop() {
    print("\tStoped $title Duration: $duration");
  }

}

mixin Suffleable{
  void shufflePlaylist(){}
}

class Playlist extends MediaFile with Suffleable{
  String name;
  List<MediaFile> mediaFile;
  Playlist({required this.name, required this.mediaFile}) : super('', 0.0, '');

  void playPlaylist(){
    print("$name is playing now! Enjoy it. Check out the playlist below!");
    mediaFile.forEach((element) {element.play();});
  }

  @override
  void shufflePlaylist() {
    mediaFile.shuffle();
  }
}
