

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.56,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(42.0),
              ),
              image: DecorationImage(
                image: NetworkImage("https://mymodernmet.com/wp/wp-content/uploads/2019/08/fanjingshan-buddhist-temples-china-7.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
