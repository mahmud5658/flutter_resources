import 'package:flutter/material.dart';

class FromTextWidget extends StatefulWidget {
  const FromTextWidget({super.key});

  @override
  State<FromTextWidget> createState() => _FromTextWidgetState();
}

class _FromTextWidgetState extends State<FromTextWidget> {
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  //--------- function ----------//

  trySubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitForm();
    } else {
      print("Something error");
    }
  }

  submitForm() {
    print(firstName);
    print(lastName);
    print(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple form'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: "Enter First Name"),
                    key: const ValueKey('firstname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "First Name should not be empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstName = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: "Enter Last Name"),
                    key: const ValueKey('lastname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Last Name should not be empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastName = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: "Enter your emil"),
                    key: const ValueKey('email'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Email should not be empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: "Enter your password"),
                    key: const ValueKey('password'),
                    validator: (value) {
                      if (value.toString().length <= 5) {
                        return "Minimum Length of password should be 6";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        trySubmit();
                      },
                      child: const Text('Submit'))
                ],
              )),
        ),
      ),
    );
  }
}
