import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../models/note.dart';

class EditScreen extends StatefulWidget {
  final Note? note;
  const EditScreen({super.key, this.note});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();
  //Uint8List? _image;
  //File? selectedImage;
  @override
  void initState() {
    // TODO: implement initState
    if (widget.note != null) {
      _titleController = TextEditingController(text: widget.note!.title);
      _contentController = TextEditingController(text: widget.note!.content);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  padding: const EdgeInsets.all(0),
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
          Expanded(
              child: ListView(
            children: [
              //imageProfile(),
              TextField(
                controller: _titleController,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Title',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 30)),
              ),
              TextField(
                controller: _contentController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                maxLines: null,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type something here',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 1, 1, 1),
                    )),
              ),
            ],
          ))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(
              context, [_titleController.text, _contentController.text]);
        },
        elevation: 10,
        backgroundColor: Colors.pink.shade200,
        child: const Icon(
          Icons.unarchive_outlined,
          color: Color.fromARGB(255, 246, 245, 245),
        ),
      ),
    );
  }

  //////////////////

  // Widget imageProfile() {
  //   return Center(
  //     child: Stack(children: [
  //       _image != null
  //           ? CircleAvatar(radius: 80.0, backgroundImage: MemoryImage(_image!))
  //           : const CircleAvatar(
  //               radius: 80.0,
  //               backgroundImage: AssetImage(""),
  //             ),
  //       Positioned(
  //           bottom: 0,
  //           right: 20,
  //           child: IconButton(
  //             onPressed: () {
  //               showImagePickerOption(context);
  //             },
  //             icon: Icon(
  //               Icons.add_a_photo,
  //               color: Colors.blue,
  //             ),
  //           )),
  //     ]),
  //   );
  // }

  // void showImagePickerOption(BuildContext context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (builder) {
  //         return SizedBox(
  //           width: MediaQuery.of(context).size.width,
  //           height: MediaQuery.of(context).size.height / 4,
  //           child: Row(
  //             children: [
  //               Expanded(
  //                 child: InkWell(
  //                   onTap: () {
  //                     _pickImageFromGallery();
  //                   },
  //                   child: Column(
  //                     children: [
  //                       Icon(
  //                         Icons.image,
  //                         size: 70,
  //                       ),
  //                       Text("Gallery"),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //               Expanded(
  //                 child: InkWell(
  //                   onTap: () {
  //                     _pickImageFromCamera();
  //                   },
  //                   child: Column(
  //                     children: [
  //                       Icon(
  //                         Icons.camera_alt,
  //                         size: 70,
  //                       ),
  //                       Text("Camera")
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       });
  // }

  // Future _pickImageFromGallery() async {
  //   final returnImage =
  //       await ImagePicker().pickImage(source: ImageSource.gallery);
  //   if (returnImage == null) return;
  //   setState(() {
  //     selectedImage = File(returnImage.path);
  //     _image = File(returnImage.path).readAsBytesSync();
  //   });
  //   Navigator.of(context).pop();
  // }

  // Future _pickImageFromCamera() async {
  //   final returnImage =
  //       await ImagePicker().pickImage(source: ImageSource.camera);
  //   if (returnImage == null) return;
  //   setState(() {
  //     selectedImage = File(returnImage.path);
  //     _image = File(returnImage.path).readAsBytesSync();
  //   });
  //   Navigator.of(context).pop();
  // }
}
