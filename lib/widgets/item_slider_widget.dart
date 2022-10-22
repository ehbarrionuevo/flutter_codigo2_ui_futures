
import 'package:flutter/material.dart';

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 140,
      width: 210,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
              color: Color(0xff34383F).withOpacity(0.12),
              blurRadius: 12,
              offset: const Offset(0, 4)
          ),
        ],
        image: DecorationImage(
          image: NetworkImage(
            "https://mymodernmet.com/wp/wp-content/uploads/2019/08/fanjingshan-buddhist-temples-china-7.jpg",
          ),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  const Color(0xff34383F).withOpacity(0.4),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mount Fanjingshan",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "3.4 (2323 views)",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
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
