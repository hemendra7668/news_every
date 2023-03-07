import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Column(
        children: [
          Image.network(
            "https://th.bing.com/th/id/OIP.WTmpAFWZnhWtRnHG4PrjyQHaE7?pid=ImgDet&rs=1",
            fit: BoxFit.cover,
          ),
          Text(
              "lorem ipsum whdfbwijs scwds ax adjbawdca dfjbqewdcherfbehcedbfuehf ewdc asdfuhbqddfj dcqkjdbfcqwe cedcbeq cjqkdc qdcbe fkjdc eajb fqwdjc edfdhb edfcdbcjkn qdcjkqwbdc jqwkdc wqjcqw cjbqw dqwkdjf dqhbqwedfjqwb wceqdfjbe dfhdqw ckedfhbefjqw efjkwfb wqjfj wfjewfwqedfjkbhwewfjhewf"),
        ],
      ),
    );
  }
}
