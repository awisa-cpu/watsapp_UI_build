import 'package:flutter/material.dart';

//work on the status page more and how the list of status are dsplayed
class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 12, left: 12),
        child: Container(
            alignment: Alignment.topLeft,
            color: Colors.white,
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/profile1.png'),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'My status\nTap to add status update',
                  style: TextStyle(color: Colors.grey.shade700),
                )
              ],
            )),
      ),
    );
  }
}
