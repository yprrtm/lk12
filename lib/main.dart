import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/homepage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [
    HomePage(),
    Center(child: Text("data")),
    Center(child: Text("ddd")),
    Center(child: Text("dafffta")),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: widgets[currentIndex],
        bottomNavigationBar: ConvexAppBar(
          activeColor: Colors.amber,
          color: Colors.white.withOpacity(0.5),
          style: TabStyle.react,
          height: 54,
          backgroundColor: Colors.black.withOpacity(0.9),
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.category_outlined, title: 'Category'),
            TabItem(icon: Icons.heart_broken_outlined, title: 'Love'),
            TabItem(icon: Icons.settings, title: 'Settings'),
          ],
          onTap: (int i) {
            setState(() {
              currentIndex = i;
            });
          },
        ),
      ),
    );
  }
}
