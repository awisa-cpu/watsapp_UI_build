import 'package:flutter/material.dart';
import 'package:watsappproject/routes_constants/constants.dart';

class IndividualChats extends StatefulWidget {
  const IndividualChats({super.key});

  @override
  State<IndividualChats> createState() => _IndividualChatsState();
}

class _IndividualChatsState extends State<IndividualChats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: InkWell(
          enableFeedback: false,
          onTap: () => Navigator.of(context)
              .pushNamedAndRemoveUntil(watsappChats, (route) => false),
          child: Row(
            children: const [
              Icon(Icons.arrow_back),
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('images/profile1.png'),
                backgroundColor: Colors.white,
              )
            ],
          ),
        ),
        title: const Text('Username'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
            splashRadius: 20,
            enableFeedback: false,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
            splashRadius: 20,
            enableFeedback: false,
          ),
          PopupMenuButton<Chatspopup>(
            enableFeedback: false,
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: Chatspopup.viewContact,
                  child: Text('View contact'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.report,
                  child: Text('Report'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.block,
                  child: Text('Block'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.search,
                  child: Text('Search'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.mutenotifications,
                  child: Text('Mute notifications'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.disappearingmessages,
                  child: Text('Disappearing messages'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.wallpaper,
                  child: Text('Wallpaper'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.more,
                  child: Text('View contact'),
                ),
                PopupMenuItem(
                  value: Chatspopup.more,
                  child: InkWell(
                    enableFeedback: false,
                    onTap: () {
                      //this is not working yet
                      PopupMenuButton<Chatspopup>(
                        itemBuilder: (context) {
                          return [
                            const PopupMenuItem(
                              value: Chatspopup.medialinksanddocs,
                              child: Text('Media, links, and docs'),
                            ),
                            const PopupMenuItem(
                              value: Chatspopup.clearChats,
                              child: Text('Clear chat'),
                            ),
                            const PopupMenuItem(
                              value: Chatspopup.exportChats,
                              child: Text('Export chat'),
                            ),
                            const PopupMenuItem(
                              value: Chatspopup.addShortCuts,
                              child: Text('Add shortcut'),
                            ),
                          ];
                        },
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('More'),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
          )
        ],
      ),
    );
  }
}

enum Chatspopup {
  viewContact,
  report,
  block,
  search,
  mutenotifications,
  disappearingmessages,
  wallpaper,
  more,
  medialinksanddocs,
  clearChats,
  exportChats,
  addShortCuts,
}
