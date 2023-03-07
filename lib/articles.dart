import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:microphone/microphone.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  TextEditingController Textcontroller = TextEditingController();
  bool islistening = false;
  bool _isTextFilled = false;

  @override
  void initState() {
    super.initState();
    Textcontroller.addListener(() {
      setState(() {
        _isTextFilled = Textcontroller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    Textcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 169, 236, 160),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 202, 226, 175),
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Text("NAME"),
          backgroundColor: Color.fromARGB(255, 79, 235, 86),
          leading: Icon(Icons.person_2),
          actions: [
            PopupMenuButton<int>(
              onSelected: (value) {
                // if value 1 show dialog
                if (value == 1) {
                  print("hello, i is clicked ");
                  // if value 2 show dialog
                } else if (value == 2) {
                  print("second is clicked");
                }
              },
              itemBuilder: (context) => [
                // popupmenu item 1
                const PopupMenuItem(value: 1, child: Text("Get The App")),
                // popupmenu item 2
                const PopupMenuItem(
                    value: 2,
                    // row has two child icon and text
                    child: Text("About")),
              ],
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(child: SizedBox(child: SingleChildScrollView())),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // kya karu ?? isme?
                    width: MediaQuery.of(context).size.width * .7,
                    height: MediaQuery.of(context).size.height * .1,
                    child: TextFormField(
                      autocorrect: true,
                      controller: Textcontroller,
                      cursorColor: Colors.green,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.green),
                        labelText: "Enter Message",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 45, 176, 69)),
                        suffixIcon: _isTextFilled
                            ? IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.send,
                                  color: Colors.green,
                                ),
                              )
                            : null,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18))),
                        hintText: "Enter something to Chats someone",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 38, 194, 72),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  // if(tcontroller.text!=null)
                  IconButton(
                    color: Color.fromARGB(255, 48, 220, 53),
                    onPressed: () {
                      Card(
                        color: Colors.amberAccent,
                        margin: EdgeInsets.all(10.0),
                      );
                    },
                    icon: Icon(Icons.attach_file),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  AvatarGlow(
                    animate: islistening,
                    duration: Duration(seconds: 5),
                    glowColor: Colors.orange,
                    repeat: true,
                    repeatPauseDuration: Duration(seconds: 1),
                    endRadius: 25.0,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            islistening = true;
                          });
                        },
                        // onPressed: () {},
                        icon: Icon(
                          islistening ? Icons.mic : Icons.mic_none,
                          color: Colors.green,
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
