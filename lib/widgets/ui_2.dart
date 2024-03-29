import 'package:flutter/material.dart';

class CloneInsta extends StatelessWidget {
  const CloneInsta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
        title: const Text('wanda.s',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              // color: Colors.red,
              height: 200,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 180,
                    // color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1380&t=st=1710860819~exp=1710861419~hmac=e309a2ccc2e8191406c07118b95d377dda81c782d2de5d66ecad3b55fa684a57'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "wanda.s",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Photographer/NewYork",
                          style: TextStyle(fontSize: 14, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      // color: Colors.orange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '150',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      'Posts',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.red),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '5K',
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.black),
                                    ),
                                    Text(
                                      'Followers',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.red),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '100',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      'Following',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.red),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 50,
                                    // width: 100,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.blue),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Follow',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.blue, width: 2),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_downward,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1380&t=st=1710860819~exp=1710861419~hmac=e309a2ccc2e8191406c07118b95d377dda81c782d2de5d66ecad3b55fa684a57',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text('Titile')
                      ],
                    );
                  }),
            ),
            // Container(
            //   color: Colors.green,
            //   height: 100,
            // ),
            Expanded(
                child: Container(
              // color: Colors.yellow,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 100,
                      // color: Colors.red,
                      margin: EdgeInsets.all(5),
                      // padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: NetworkImage('https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1380&t=st=1710860819~exp=1710861419~hmac=e309a2ccc2e8191406c07118b95d377dda81c782d2de5d66ecad3b55fa684a57'),
                      fit: BoxFit.cover)
                      ),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
