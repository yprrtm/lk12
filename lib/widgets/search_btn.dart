import 'package:flutter/material.dart';

class SearchButton extends StatefulWidget {
  const SearchButton({
    super.key,
  });

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 390,
      height: 55,
      child: TextField(
        autocorrect: false,
        decoration: InputDecoration(
          filled: false,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          prefixIcon: Icon(Icons.search),
          hintText: "Search",
          hintStyle: TextStyle(fontSize: 18, color: Colors.grey[800]),
        ),
      ),
    );
  }
}
