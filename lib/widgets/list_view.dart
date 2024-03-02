import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Widget'),
        backgroundColor: Colors.red,
        elevation: 10,
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('Abdullah'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Banana'),
              subtitle: Text('Raihan'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Apple'),
              subtitle: Text('Niha'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Grape'),
              subtitle: Text('Abdullah'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('Abdullah'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('Abdullah'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('Abdullah'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('Abdullah'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('Abdullah'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('Abdullah'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('Abdullah'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('Abdullah'),
            ),
          ),
           Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('Abdullah'),
            ),
          ),
        ],
      ),
    );
  }
}
