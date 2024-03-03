import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Widget'),
      ),
      drawer: Drawer(
        child: Container(
            color: Theme.of(context).primaryColor,
            child: ListView(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    color: Colors.blue,
                    child: const Row(
                      children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage('https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg'),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Abdullah Al Mahmud',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text('mahmud@gmail.com'),
                        ],
                      )
                    ]),
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('My Folder'),
                ),
                const ListTile(
                  leading: Icon(Icons.group),
                  title: Text('Shared with me'),
                ),
                const ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Stared'),
                ),
                const ListTile(
                  leading: Icon(Icons.delete),
                  title: Text('Trash'),
                ),
                const ListTile(
                  leading: Icon(Icons.upload),
                  title: Text('Upload'),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                ),
                const ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                ),
              ],
            )),
      ),
      body: const Center(child: Text("Hey there!!")),
    );
  }
}
