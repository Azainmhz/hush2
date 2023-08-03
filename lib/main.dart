import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hush1/HomeScreen.dart';
import 'package:hush1/PlaylistScreen.dart';
import 'package:hush1/SongScreen.dart';

void main() {
  runApp(const MyApp());
}
String hexColor = "#B0D3E2";
Color hush = Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context). textTheme.apply(
          bodyColor: hush,
          displayColor: hush,
        ),

      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name:'/',page: ()=> const HomeScreen()),
        GetPage(name:'/song',page: ()=> const SongScreen()),
        GetPage(name:'/playlist',page: ()=> const PlaylistScreen()),
      ],
    );
  }
}

