//import 'dart:html';
import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ImageUpload extends StatefulWidget {
  const ImageUpload({Key? key}) : super(key: key);

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  File? _image;
  final imagePicker = ImagePicker();
  String? downloadURL;
  Future imagePickerGalleryMethod() async {
    final pickGallery = await imagePicker.pickImage(source: ImageSource.camera);
    //final pickCamera = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickGallery != null) {
        _image = File(pickGallery.path);
      }
    });
  }

  Future imagePickerCameraMethod() async {
    //final pickGallery = await imagePicker.pickImage(source: ImageSource.camera);
    final pickCamera = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickCamera != null) {
        _image = File(pickCamera.path);
      }
    });
  }

  Future uploadImage() async {
    Reference ref = FirebaseStorage.instance.ref().child("images");
    await ref.putFile(_image!);
    downloadURL = await ref.getDownloadURL();
    print(downloadURL);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Upload"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                height: 500,
                width: double.infinity,
                child: Column(
                  children: [
                    const Text("Add Image"),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.green),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: _image == null
                                      ? const Center(
                                          child: Text("No Image Selected"))
                                      : Image.file(_image!),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          imagePickerGalleryMethod();
                                        },
                                        child: Text("Select Image")),
                                    ElevatedButton(
                                        onPressed: () {
                                          imagePickerCameraMethod();
                                        },
                                        child: Text("Capture Now")),
                                  ],
                                ),
                                //ElevatedButton(onPressed: (){}, child: Text("Select Image")),
                                ElevatedButton(
                                    onPressed: () {
                                      const ImageUpload();
                                    },
                                    child: Text("Upload Image")),
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
