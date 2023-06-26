import 'player.dart';

void main(List<String> args) {
  MediaFile fileOne = MediaFile("David Bisbal, Greeicy - Perdón", 3.33, "https://www.youtube.com/watch?v=BqTa35JlZ3E&pp=ygUMd2l0aG91dCB5b3Ug");
  MediaFile fileTwo = MediaFile("Halsey - Still Learning", 3.33, "https://www.youtube.com/watch?v=ZQxUj1lrFFo&pp=ygUMd2l0aG91dCB5b3Ug");
  MediaFile fileThree = MediaFile("Andra feat. David Bisbal - Without You", 3.18, "https://www.youtube.com/watch?v=EflkXHaDYsU&pp=ygUMd2l0aG91dCB5b3Ug");
  MediaFile fileFour = MediaFile("Blue - Fly By II", 3.49, "https://www.youtube.com/watch?v=TMApPh9hlRY&pp=ygUMd2l0aG91dCB5b3Ug");

  Playlist playlistOne = Playlist(name: "Mixed", mediaFile: [fileOne, fileTwo, fileThree, fileFour]);

  playlistOne.playPlaylist();
  playlistOne.shufflePlaylist();
  print("\nAfter shuffle process");
  playlistOne.playPlaylist();

  print("\nStoped music");
  fileOne.stop();

  print("\Paused music");
  fileThree.pause();
}
