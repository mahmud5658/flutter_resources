import 'package:flutter/material.dart';

class BottomNaviagtionWidget extends StatefulWidget {
  const BottomNaviagtionWidget({super.key});

  @override
  State<BottomNaviagtionWidget> createState() => _BottomNaviagtionWidgetState();
}

class _BottomNaviagtionWidgetState extends State<BottomNaviagtionWidget> {
  int selectedIndex = 0;
  List<Widget> widgets = [
    const Text("Home"),
    const Text("Search"),
    const Text("Add"),
    const Text("Profile")
  ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navigaton Bar',
              style: TextStyle(color: Colors.white)),
        ),
        body: Center(child: widgets.elementAt(selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            onTapped(index);
          },
        ));
  }
}
