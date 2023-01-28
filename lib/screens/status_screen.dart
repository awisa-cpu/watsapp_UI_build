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
      body: Container(
        padding: const EdgeInsets.only(left: 15, top: 15),
        alignment: Alignment.topLeft,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Stack(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                        Positioned(
                          left: 30,
                          top: 35,
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 16.5,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.teal,
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      'My status\nTap to add status update',
                      style: TextStyle(color: Colors.grey.shade700),
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Recent updates',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white54,
              enableFeedback: false,
              child: const Icon(
                Icons.edit,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.photo_camera),
          ),
        ],
      ),
    );
  }
}
