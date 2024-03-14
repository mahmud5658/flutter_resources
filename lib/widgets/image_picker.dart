import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.grey.shade400,
              child: Center(
                child: file == null
                    ? const Text('Image not found')
                    : Image.file(
                        File(file!.path),
                        fit: BoxFit.contain,
                      ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile photo = await _picker.pickImage(
                    source: ImageSource.gallery) as XFile;

                setState(
                  () {
                    file = photo;
                  },
                );
                print('Image Picked');
                print(photo.path);
              },
              child: const Text('Pick Image'),
            ),
          ],
        ),
      ),
    );
  }
}
