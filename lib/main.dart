import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:message/list/chat_list.dart';
//import 'package:animated_splash_screen/animated_splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:AnimatedSplashScreen(
        splash:IconButton(
          onPressed: (){}, 
          icon: Icon(
            Icons.chat_rounded, 
            color: Colors.blue,
            
          ),
          iconSize:60,
        ), 
        nextScreen: Chat())
    );
  }
}
