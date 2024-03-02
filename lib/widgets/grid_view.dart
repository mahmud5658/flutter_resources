import 'package:flutter/material.dart';

class GridViewW extends StatelessWidget {
  const GridViewW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,
            mainAxisSpacing: 10,childAspectRatio: 2/3),
        children: const [
          Card(
            child: Center(
              child: Text('Orange'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Orange'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Orange'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Orange'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Orange'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Orange'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Orange'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Orange'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Orange'),
            ),
          ),

        ],
      ),
    );
  }
}
