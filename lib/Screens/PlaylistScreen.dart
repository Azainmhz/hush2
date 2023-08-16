import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/song_model.dart';
import '../models/playlist_model.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context){
    Playlist playlist = Playlist.playlists[0];

    return Container(

      decoration: BoxDecoration(
        gradient:LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[
              Colors.blue.shade200.withOpacity(.8),
              Colors.blue.shade100.withOpacity(.8),
            ]
        ),


      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation:0,
            title: const Text('Playlist'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                _Playlistinformation(playlist: playlist),
                const SizedBox(height:30),
                const _PlayOrShuffleSwitch(),
                _PlaylistSongs(playlist: playlist),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PlaylistSongs extends StatelessWidget {
  const _PlaylistSongs({
    super.key,
    required this.playlist,
  });

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: playlist.songs.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: Text (
              '${index+1}',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            title: Text(
              playlist.songs[index].title,
              style: Theme.of(context)
              .textTheme.bodyMedium!
              .copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle:
                  Text('${playlist.songs[index].description}'),
          );
    },
    );
  }
}

class _PlayOrShuffleSwitch extends StatefulWidget {
  const _PlayOrShuffleSwitch({
    super.key,
  });

  @override
  State<_PlayOrShuffleSwitch> createState() => _PlayOrShuffleSwitchState();
}

class _PlayOrShuffleSwitchState extends State<_PlayOrShuffleSwitch> {
  bool isPlay=true;

  get song => null;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        Get.toNamed('/song', arguments:song);
      },

        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            const SizedBox(width:10),
            Icon(
              Icons.play_circle,
              color: isPlay?Colors.white: Colors.blue.shade300,
            ),
          ],
        ),
      );

  }
}

class _Playlistinformation extends StatelessWidget {
  const _Playlistinformation({
    super.key,
    required this.playlist,
  });

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.network(
            playlist.imageUrl,
            height:MediaQuery.of(context).size.height*0.3,
            width:MediaQuery.of(context).size.height*0.3,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height:30),
        Text(
          playlist.title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}