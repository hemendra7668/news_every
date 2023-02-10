import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  TextEditingController cont = new TextEditingController();
  // String v= cont.toString();
  List<String> slimg = [
    "https://th.bing.com/th?id=OIP.PYipJ_hSncugM2SwnZitvgHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.4&pid=3.1&rm=2",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.amberAccent,
          child: Text("Newss"),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: Column(
        children: <Widget>[
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Articleitem();
            },
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}

class Articleitem extends StatelessWidget {
  const Articleitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
    );
  }
}
