// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:news/articles.dart';
import 'package:news/model/m.dart';
import 'package:news/model/modal.dart';

class Mainpage extends StatefulWidget {
  Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  Article_model? art;
  articled() async {
    Article_model? art2 = await News.api_call();
    setState(() {
      art = art2;
    });

    @override
    void initState() {
      super.initState();
      articled();
    }
  }

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
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return
                    // Container(
                    //   color: Colors.green[400],
                    // );
                    Articleitem();
                //   title: art!.title,
                //   author: art!.author,

                //   urlToImage: art!.urlToImage,
                //   publishedAt: art!.publishedAt,
                //   description: art!.description,
                //   content: art!.content,
                // );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}

class Articleitem extends StatefulWidget {
  @override
  State<Articleitem> createState() => _ArticleitemState();
}

class _ArticleitemState extends State<Articleitem> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text("wdhfbe"),
    ]);
  }
}
