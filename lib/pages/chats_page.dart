import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:watsappproject/routes_constants/constants.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final date = DateFormat('dd/MM/yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        personalChats, (route) => false);
                  },
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.teal,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/profile1.png'),
                    ),
                  ),
                  title: const Text('Username'),
                  trailing: Text(date),
                  enableFeedback: false,
                ),
              );
            },
          ),
        ),

        //work on the floatingactionbutton on all the tabs
        floatingActionButton: Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(color: Colors.teal),
          child: const Center(
            child: Icon(Icons.chat),
          ),
        ),
      ),
    );
  }
}
