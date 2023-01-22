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
      body: Padding(
        padding: const EdgeInsets.only(top: 12, left: 12),
        child: Container(
            alignment: Alignment.topLeft,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.teal),
                  child: const Icon(
                    Icons.link,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'Create call Link\nShare a link for your Whatsapp call',
                  style: TextStyle(color: Colors.grey.shade700),
                )
              ],
            )),
      ),
    );
  }
}
