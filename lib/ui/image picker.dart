import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePick extends StatefulWidget {
  const ImagePick({Key? key}) : super(key: key);

  @override
  _ImagePickState createState() => _ImagePickState();
}

class _ImagePickState extends State<ImagePick> {
  ImagePicker _picker = ImagePicker();
   XFile? file;
   List <XFile>? files;

  pickImage() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      file = photo;
    });
    print("Image Picked");
    print(photo!.path);
  }
  pickImages() async {
    final List <XFile>? photos = await _picker.pickMultiImage();
    setState(() {
      files = photos;
    });
    print("Images Picked");
    for(int i=0; i< files!.length; i++) {
      print(files![i].path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.greenAccent,
                child: Center(
                    child: file == null
                        ? Text("Image Not Picked")
                        : Image.file(File(file!.path))),
              ),
              ElevatedButton(
                onPressed: pickImage,
                child: Text("Pick Image"),
              ),
              ElevatedButton(
                onPressed: pickImages,
                child: Text("Pick Multiple Image"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
