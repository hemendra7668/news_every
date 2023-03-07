import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController Textcontroller = TextEditingController();
  String imageFile = "";
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // shape: const RoundedRectangleBorder(
            //   borderRadius: BorderRadius.vertical(
            //     bottom: Radius.circular(30),
            //   ),
            // ),
            title: Text("NAME"),
            backgroundColor: Color.fromARGB(255, 40, 202, 124),
            leading: Icon(Icons.person_add_outlined),
            actions: [
              PopupMenuButton<int>(
                itemBuilder: (context) => [
                  // popupmenu item 1
                  const PopupMenuItem(value: 1, child: Text("Get The App")),
                  // popupmenu item 2
                  const PopupMenuItem(value: 2, child: Text("About")),
                ],
                // offset: Offset(0, 100),
                color: Colors.white,
                // elevation: 2,
                onSelected: (value) {
                  // if value 1 show dialog
                  if (value == 1) {
                    print("hello, i is clicked ");
                    // if value 2 show dialog
                  } else if (value == 2) {
                    print("second is clicked");
                  }
                },
              ),
            ]),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: const SingleChildScrollView(),
                height: MediaQuery.of(context).size.height * 0.8,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 40, 202, 124),
                    foregroundColor: Colors.white,
                    child: PopupMenuButton(
                      color: Colors.white24,
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Icon(Icons.image),
                          onTap: () {
                            Future getImage() async {
                              ImagePicker imagePicker = ImagePicker();
                              XFile? pickedFile;
                              pickedFile = await imagePicker.pickImage(
                                  source: ImageSource.gallery);
                              if (pickedFile != null) {
                                imageFile = File(pickedFile.path) as String;
                                if (imageFile != null) {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  uploadImageFile();
                                }
                              }
                            }
                          },
                        ),
                        PopupMenuItem(child: Icon(Icons.picture_as_pdf))
                      ],
                      icon: Icon(Icons.attach_file),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextFormField(
                      autocorrect: true,
                      controller: Textcontroller,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18))),
                          hintText: "enter something to chat someone",
                          hoverColor: Colors.green),
                      validator: (value) {
                        if (true) {
                          setState(() {});
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 5),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 40, 202, 124),
                    foregroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_voice),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

  void uploadImageFile() {}
}
