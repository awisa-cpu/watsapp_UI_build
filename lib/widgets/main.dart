import 'package:flutter/material.dart';
import 'package:watsappproject/screens/chats_screen.dart';
import 'package:watsappproject/screens/individual_screen.dart';
import 'package:watsappproject/screens/watsapp.dart';

import '../routes_constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const Watsapp(),
      routes: {
        personalChats: (context) => const IndividualChats(),
        watsappChats: (context) => const Watsapp(),
        chats: (context) => const ChatsPage(),
      },
    );
  }
}
