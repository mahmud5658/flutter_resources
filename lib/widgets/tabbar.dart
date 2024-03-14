import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            indicatorColor: Colors.black,
            tabs: [
            Tab(
              icon: Icon(Icons.groups),
              text: 'Groups',
            ),
            Tab(
              icon: Icon(Icons.chat),
              text: 'Chat',
            ),
            Tab(
              icon: Icon(Icons.update),
              text: 'update',
            ),
            Tab(
              icon: Icon(Icons.call),
              text: 'calls',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: const Text('Groups', style: TextStyle(fontSize: 30)),
              ),
            ),
            Container(
              child: Center(
                child: const Text('Groups', style: TextStyle(fontSize: 30)),
              ),
            ),
            Container(
              child: Center(
                child: const Text('Groups', style: TextStyle(fontSize: 30)),
              ),
            ),
            Container(
              child: Center(
                child: const Text('Groups', style: TextStyle(fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
