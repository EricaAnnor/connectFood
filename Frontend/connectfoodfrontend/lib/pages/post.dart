import 'dart:io';

import 'package:connectfoodfrontend/components/page_state.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  PostPageState createState() => PostPageState();
}

class PostPageState extends State<PostPage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  final TextEditingController _postController = TextEditingController();

  String? _selectedTag;
  final List<String> _tags = ['Problem', 'Facts', 'Hygiene'];

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
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Text(
              "Post",
              style: TextStyle(
                  color: Color(0xFF34A853),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              filled: true,
                              fillColor: Colors
                                  .white, // Optional: Set your desired fill color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    50), // Circular border
                                borderSide: const BorderSide(
                                  color: Color(0xFF34A853), // Border color
                                  width: 2, // Border width
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color(0xFF34A853), // Border color
                                  width: 2, // Border width
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  color: Color(
                                      0xFF34A853), // Border color when focused
                                  width: 2, // Border width when focused
                                ),
                              ),
                            ),
                            hint: const Text('Select a tag'),
                            // dropdownColor: const Color(0xFFE3F3DD),
                            borderRadius: BorderRadius.circular(20),
                            value: _selectedTag,
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedTag = newValue;
                              });
                            },
                            items: _tags
                                .map<DropdownMenuItem<String>>((String tag) {
                              return DropdownMenuItem<String>(
                                value: tag,
                                child: Text(tag),
                              );
                            }).toList(),
                          )),
                    ),
                    SizedBox(
                      height: 300,
                      child: TextFormField(
                        controller: _postController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Post your updates here...',
                        ),
                        maxLines: null,
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (_image != null)
                      Image.file(
                        _image!,
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () => _pickImage(ImageSource.gallery),
                icon: const Icon(Icons.photo_album_outlined, size: 30),
              ),
              // Adjust spacing as needed
              IconButton(
                onPressed: () => _pickImage(ImageSource.camera),
                icon: const Icon(Icons.camera_alt_outlined, size: 30),
              ),
            ],
          ),
          const SizedBox(height: 10), // Add some space at the bottom if needed
        ],
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
