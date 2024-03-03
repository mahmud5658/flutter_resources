import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageCachedWidget extends StatelessWidget {
  const ImageCachedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Cached Network'),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Center(
            child: CachedNetworkImage(imageUrl: 'http://yamataka01.web.fc2.com/02/15553-Ginger-cat-standing-white-background.jpg',
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
