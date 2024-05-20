import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> imageSliders = [
    Container(
      width: double.infinity,
      height: 500.0,
      decoration: BoxDecoration(color: Colors.amber),
    ),
    Container(
      width: double.infinity,
      height: 500.0,
      decoration: BoxDecoration(color: Colors.green),
    ),
    Container(
      width: double.infinity,
      height: 500.0,
      decoration: BoxDecoration(color: Colors.blue),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              // autoPlay: true,
              viewportFraction: 1,
              enlargeCenterPage: true,
              aspectRatio: 0.9,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageSliders.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 6.0,
                height: 6.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.grey)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
