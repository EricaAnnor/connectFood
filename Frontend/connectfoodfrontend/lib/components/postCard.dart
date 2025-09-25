import 'dart:io';

import 'package:connectfoodfrontend/components/page_state.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostCardPage extends StatefulWidget {
  const PostCardPage({super.key});

  @override
  PostCardPageState createState() => PostCardPageState();
}

class PostCardPageState extends State<PostCardPage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF34A853), size: 34.0),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Pages()));
          },
        ),
        title: const Text(
          'New Post',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? const Text('No image selected.')
                : Image.file(_image!),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.gallery),
              child: const Text('Pick Image from Gallery'),
            ),
            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.camera),
              child: const Text('Capture Image with Camera'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
}
