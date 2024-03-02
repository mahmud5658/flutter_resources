import 'package:flutter/material.dart';

class GridViewBuilderW extends StatelessWidget {
  const GridViewBuilderW({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> name = [
      'Abdullah',
      'Raihan',
      'Moinul',
      'Bappy',
      'Shuvo',
      'Rakib'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: GridView.builder(
          gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: name.length,
          itemBuilder: (context,index) {
            return  Card(
              child: Center(
                child: Text(name[index]),
              ),
            );
          }),
    );
  }
}
