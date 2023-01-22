import 'package:flutter/material.dart';
import 'package:watsappproject/pages/chats_page.dart';
import 'package:watsappproject/pages/individual_chats.dart';
import 'package:watsappproject/pages/watsapp.dart';

import 'routes_constants/constants.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const Watsapp(),
      routes: {
        personalChats: (context) => const IndividualChats(),
        watsappChats: (context) => const Watsapp(),
        chats :(context) => const ChatsPage(),
      },
    );
  }
}
