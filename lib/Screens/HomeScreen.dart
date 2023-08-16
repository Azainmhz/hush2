import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hush1/Screens/PlaylistScreen.dart';
import 'package:hush1/Screens/SongScreen.dart';
import 'package:hush1/models/playlist_model.dart';
import '../models/song_model.dart';
import '../widgets/widgets.dart';
String hexColor = "#B0D3E2";
Color hush = Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});







  @override
    Widget build(BuildContext context){
    List<Song> songs=Song.songs;
    List<Playlist> playlists = Playlist.playlists;

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


        appBar: const _CustomAppBar(),
        body:

        SingleChildScrollView(

           child: Column(
             children: [

               const Music(),
               _MusicScroll(songs: songs),
               _PlaylistMusic(playlists: playlists),
             ],
           ),

         ),
        bottomNavigationBar: const _CustomNavBar(),
      ),
    );
  }
}

class _PlaylistMusic extends StatelessWidget {
  const _PlaylistMusic({
    super.key,
    required this.playlists,
  });

  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SectionHeader(title: 'Playlists'),
          ListView.builder(
              shrinkWrap:true,
              padding: const EdgeInsets.only(top:20),
              physics:const NeverScrollableScrollPhysics(),
              itemCount: playlists.length,
              itemBuilder: ((context,index){
                return PlaylistCard(playlist: playlists[index]);

            })),
        ],
      ),
    );
  }
}
class _CustomNavBar extends StatefulWidget {
  const _CustomNavBar({
    super.key,
  });

  @override
  State<_CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<_CustomNavBar> {

  List pages =[
    const HomeScreen(),
    const SongScreen(),
    const PlaylistScreen(),
  ];

  int _currentIndex=0;

  void onTap(int index){
    setState((){
      _currentIndex= index;
      pages[_currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {

      return BottomNavigationBar(

        onTap:  onTap,

        type: BottomNavigationBarType.fixed,
        backgroundColor: hush,

        items: const[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Home',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.person),
            label:'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined),
            label:'Playlist',
          ),
        ],

        currentIndex: _currentIndex,


      );


  }
}


class _MusicScroll extends StatelessWidget {
  const _MusicScroll({
    super.key,
    required this.songs,
  });

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0,
          top:20.0,
          bottom:20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: SectionHeader(title:'Our Playlists'),
          ),
          const SizedBox(height: 20.0),
          SizedBox(height: MediaQuery.of(context).size.height *0.27,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: songs.length,
                  itemBuilder: (context, index){
                  return SongCard(song: songs[index]);

              },
          ),
          ),
        ],
      ),
    );
  }
}





class Music extends StatelessWidget {
  const Music({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height:20.0),
          TextFormField(
            decoration:InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: 'search',
              hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color:Colors.grey.shade400),

              prefixIcon: Icon(Icons.search, color:Colors.grey.shade400),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
              ),
            ),

          ),
        ],
      ),
    );
  }
}





class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,

      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'Assets/images/Whitelogo.png',
            fit: BoxFit.contain,
            height: 55,
          ),
        ],
      ),
      centerTitle: true,
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}