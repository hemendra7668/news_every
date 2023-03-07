import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:news/posts.dart';

class Lists extends StatelessWidget {
  const Lists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        child: SingleChildScrollView(
          // dragStartBehavior: DragStartBehavior.down,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              children: const [
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
