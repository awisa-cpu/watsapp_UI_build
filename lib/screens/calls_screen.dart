import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 10),
        alignment: Alignment.topLeft,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 30,
                    child: Icon(
                      Icons.link,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'Create call link',
                    style: TextStyle(color: Colors.grey),
                  ),
                  subtitle: Text(
                    'Share a link for your WhatsaApp call',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  isThreeLine: true,
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Recent',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_call),
      ),
    );
  }
}
