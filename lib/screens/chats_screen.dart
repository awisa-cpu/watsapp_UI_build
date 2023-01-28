import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:watsappproject/routes_constants/constants.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final _date = DateFormat('dd/MM/yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Scaffold(
        body: Container(
          padding:
              const EdgeInsets.only(top: 15, bottom: 20, left: 0, right: 0),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 100,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        personalChats, (route) => false);
                  },
                  leading: const CircleAvatar(
                    radius: 38,
                    backgroundColor: Colors.teal,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                  title: const Text('Username'),
                  subtitle: const Text('Last message',
                      style: TextStyle(fontSize: 12)),
                  trailing: Text(_date),
                  isThreeLine: true,
                  dense: true,
                  enableFeedback: false,
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.chat),
        ),
      ),
    );
  }
}
