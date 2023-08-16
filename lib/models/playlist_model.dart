import 'song_model.dart';
class Playlist{
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({
  required this.title,
    required this.songs,
    required this.imageUrl,


});
  static List<Playlist> playlists =[
    Playlist(
      title:'Blue Hydrangea',
      songs:Song.songs,
      imageUrl:'https://static.wixstatic.com/media/e84684_d46e1f4ea8c344398c53a66547346427~mv2.jpg/v1/fill/w_703,h_703,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/e84684_d46e1f4ea8c344398c53a66547346427~mv2.jpg',
    ),
    Playlist(
        title:'Blue Hydrangea',
        songs:Song.songs,
        imageUrl:'https://static.wixstatic.com/media/e84684_d46e1f4ea8c344398c53a66547346427~mv2.jpg/v1/fill/w_703,h_703,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/e84684_d46e1f4ea8c344398c53a66547346427~mv2.jpg'
    ),
    Playlist(
        title:'Blue Hydrangea',
        songs:Song.songs,
        imageUrl:'https://static.wixstatic.com/media/e84684_d46e1f4ea8c344398c53a66547346427~mv2.jpg/v1/fill/w_703,h_703,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/e84684_d46e1f4ea8c344398c53a66547346427~mv2.jpg'
    ),

  ];
}