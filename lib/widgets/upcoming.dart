import 'package:flutter/material.dart';

class UpComing extends StatelessWidget {
  const UpComing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 280,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ],
                ),
                Text(
                  "data",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 280,
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 280,
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
