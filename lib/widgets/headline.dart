import 'package:flutter/material.dart';

class HeadLine extends StatelessWidget {
  const HeadLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 14, top: 14),
          child: Text(
            "Up Coming",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 14, top: 14),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40 / 2),
              color: Colors.grey[850]),
          child: IconButton(
            alignment: Alignment.center,
            color: Colors.white,
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_right),
          ),
        ),
      ],
    );
  }
}
