import 'package:flutter/material.dart';
import 'package:get/get.dart';
String hexColor = "#B0D3E2";
Color hush = Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
    Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
        color: hush,


        ),
      child: Scaffold(
        backgroundColor: hush,
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: hush,
            items: const[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label:'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label:'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined),
                label:'playlist',
              ),
            ]),
        appBar: _CustomAppBar(),
        body: Container(),
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
      leading: (Image.asset('Assets/Hush logo.jpg',
        height: 50,
        scale: 1,

      )

      ),

      centerTitle: true,

      elevation: 0.0,
      backgroundColor: hush,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}