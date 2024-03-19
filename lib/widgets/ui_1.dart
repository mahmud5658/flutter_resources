import 'package:flutter/material.dart';

class Ui1 extends StatelessWidget {
  const Ui1({super.key});

  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    // var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 450,
                    // color: Colors.yellow,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 400,
                            decoration: const BoxDecoration(
                              // color: Colors.red,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://tpdedu.s3.ap-southeast-2.amazonaws.com/uploads/2023/10/01213139/Random-Koala-Facts.jpg'),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 15,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1380&t=st=1710860819~exp=1710861419~hmac=e309a2ccc2e8191406c07118b95d377dda81c782d2de5d66ecad3b55fa684a57'),
                          ),
                        ),
                        const Positioned(
                          top: 40,
                          left: 10,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          
                        ),
                         const Positioned(
                          top: 40,
                          right: 10,
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'This is a random description of the topic',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  rowIconText("20", Icons.favorite_outline),
                  rowIconText("34", Icons.upload),
                  rowIconText("82", Icons.message),
                  rowIconText("295", Icons.face),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(icon),
      ],
    );
  }
}
