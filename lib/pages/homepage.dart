import 'package:flutter/material.dart';
import 'package:myapp/widgets/carousel.dart';
import 'package:myapp/widgets/carousel_upcoming.dart';
import 'package:myapp/widgets/headline.dart';
import 'package:myapp/widgets/search_btn.dart';
import '../widgets/upcoming.dart';


class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> myColor = [
    Colors.amber,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          CarouselWithIndicatorDemo(),
          SearchButton(),
          HeadLine(),
          SizedBox(height: 10),
          UpComing(),
          HeadLine(),
          SizedBox(height: 10),
          crsUpcoming(),
          // ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: myColor.length,
          //   itemBuilder: (context, index) {
          //     return 
          //               Container(
          //                 margin: EdgeInsets.only(right: 20),
          //                 width: 280,
          //                 height: 120,
          //                 decoration: BoxDecoration(
          //                     color: myColor[index],
          //                     borderRadius: BorderRadius.circular(16)),
          //               );
                     
                  
                
              
          //   },
          // ),
        ],
      ),
    );
  }
}
