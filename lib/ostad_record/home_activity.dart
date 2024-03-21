import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  int selectedIndex = 0;
  

  mySnackBar(context, message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inventory',
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 0,
        // centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.green,
        // toolbarOpacity: .3,
        elevation: 6,
        // leading: const Icon(Icons.menu,color: Colors.white,),
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar(context, "This is message icon");
              },
              icon: const Icon(
                Icons.message,
                color: Colors.white,
              )),
          IconButton(
            onPressed: () {
              mySnackBar(context, "This is setting icon");
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              mySnackBar(context, "This is notification icon");
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar(context, "This floating action button");
        },
        elevation: 10,
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: selectedIndex,
        onTap: (int index) {
          onTapped(index);
          if (index == 0) {
            mySnackBar(context, "This Home menu");
          }
          if (index == 1) {
            mySnackBar(context, "This is message menu");
          }
          if (index == 2) {
            mySnackBar(context, "This is profile menu");
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
           const  DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text('Abdullah Al Mahmud'),
                accountEmail: Text('mahmud15-5658@diu.edu.bd'),
                currentAccountPicture: Image(image: NetworkImage('https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1380&t=st=1710860819~exp=1710861419~hmac=e309a2ccc2e8191406c07118b95d377dda81c782d2de5d66ecad3b55fa684a57'),
                
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => {
                mySnackBar(context, "This is home title"),
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Contact'),
              onTap: () => {
                mySnackBar(context, "This is contact title"),
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () => {
                mySnackBar(context, "This is profile title"),
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              onTap: () => {
                mySnackBar(context, "This is email title"),
              },
            ),
          ],
        ),
      ),
    );
  }
}
