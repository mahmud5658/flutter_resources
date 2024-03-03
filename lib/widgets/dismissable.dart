import 'package:flutter/material.dart';

class DismissableWidget extends StatefulWidget {
  const DismissableWidget({super.key});

  @override
  State<DismissableWidget> createState() => _DismissableWidgetState();
}

class _DismissableWidgetState extends State<DismissableWidget> {
  List<String> names = ['Abdullah', 'Akash', 'Bappy', 'Sabbir', 'Auntu'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dismissable Widget'),
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            final name = names[index];
            return Dismissible(
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(names[index]),
                      backgroundColor: Colors.red,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(names[index]),
                      backgroundColor: Colors.green,
                    ));
                  }
                },
                key: Key(name),
                background: Container(color: Colors.red,),
                secondaryBackground: Container(color: Colors.green,),
                child: Card(
                  child: ListTile(
                    title: Text(names[index]),
                  ),
                ));
          },
        ));
  }
}
