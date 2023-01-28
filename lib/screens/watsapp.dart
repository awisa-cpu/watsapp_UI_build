import 'package:flutter/material.dart';
import 'package:watsappproject/screens/calls_screen.dart';
import 'package:watsappproject/screens/chats_screen.dart';
import 'package:watsappproject/screens/community_screen.dart';
import 'package:watsappproject/screens/status_screen.dart';

class Watsapp extends StatefulWidget {
  const Watsapp({super.key});

  @override
  State<Watsapp> createState() => _WatsappState();
}

class _WatsappState extends State<Watsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            //sliverAppbar
            SliverAppBar(
              title: const Text(
                'WhatsApp',
                style: TextStyle(fontSize: 25),
              ),
              actions: [
                IconButton(
                  splashRadius: 20,
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.photo_camera_outlined,
                    size: 25,
                  ),
                ),
                IconButton(
                  splashRadius: 20,
                  enableFeedback: false,
                  onPressed: () {
                    //the search functionality will be implemented
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
                PopupMenuButton<WatsappPopUp>(
                  enableFeedback: false,
                  splashRadius: 20,
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                        value: WatsappPopUp.newGroup,
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: WatsappPopUp.newBroadcast,
                        child: Text('New Broadcast'),
                      ),
                      PopupMenuItem(
                        value: WatsappPopUp.linkedDevices,
                        child: Text('Linked Devices'),
                      ),
                      PopupMenuItem(
                        value: WatsappPopUp.starredMessages,
                        child: Text('Starred Messages'),
                      ),
                      PopupMenuItem(
                        value: WatsappPopUp.settings,
                        child: Text('Settings'),
                      ),
                    ];
                  },
                ),
              ],
              backgroundColor: Colors.teal,
              expandedHeight: 150,
              pinned: true,
              floating: true,
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //
                  TabBar(
                    indicatorColor: Colors.white,
                    labelColor: Colors.grey.shade100,
                    enableFeedback: false,
                    tabs: [
                      //community tab
                      Tab(
                        icon: Icon(
                          Icons.groups,
                          color: Colors.grey.shade100,
                        ),
                      ),

                      //ChatsTab
                      const Tab(
                        text: 'Chats',
                      ),

                      //Status Tab
                      const Tab(
                        text: 'Status',
                      ),

                      //Calls tab
                      const Tab(
                        text: 'Calls',
                      )
                    ],
                  ),
                ],
              ),
            ),

            //
            SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //the issue is using an expanded widget doesnt work and thats why a sizedbox is used
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.73,
                    child: const TabBarView(
                      children: [
                        //community Tab
                        CommunityPage(),

                        //chats Tab
                        ChatsPage(),

                        //status Tab
                        StatusPage(),

                        //calls tab
                        CallsPage()
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    width: 400,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 400,
                    width: 400,
                    color: Colors.red,
                  ),
                  Container(
                    height: 400,
                    width: 400,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum WatsappPopUp {
  newGroup,
  newBroadcast,
  linkedDevices,
  starredMessages,
  settings,
}
