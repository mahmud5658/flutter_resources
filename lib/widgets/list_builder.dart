import 'package:flutter/material.dart';

class ListBuilderW extends StatelessWidget {
  const ListBuilderW({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> name = [
    //   'Abdullah',
    //   'Raihan',
    //   'Moinul',
    //   'Bappy',
    //   'Shuvo',
    //   'Rakib'
    // ];

    Map fruits = {
      'fruits': ['Orange', 'Apple', 'Banana'],
      'name': ['Abdullah', 'Raihan', 'Auntu'],
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder Widget'),
      ),
      body: ListView.builder(
        itemCount: fruits.length + 1,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                print(fruits['fruits'][index]);
              },
              leading: const Icon(Icons.person),
              title: Text(fruits['fruits'][index]),
              subtitle: Text(fruits['name'][index]),
            ),
          );
        },
      ),
    );
  }
}
