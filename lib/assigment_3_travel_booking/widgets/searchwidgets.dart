import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: Row(
        children: const <Widget>[
          Icon(Icons.search),
          SizedBox(width: 10,),
          Flexible(
            child: TextField(
              decoration: InputDecoration(hintText: "Search City",border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
