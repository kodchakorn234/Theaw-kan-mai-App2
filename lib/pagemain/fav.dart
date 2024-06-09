import 'package:flutter/material.dart';

class favpage extends StatefulWidget {
  const favpage({super.key});

  @override
  State<favpage> createState() => _favpageState();
}

class _favpageState extends State<favpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Padding(
            padding: EdgeInsets.only(left: 90),
            child: Text(
              'Favorite',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
        ),
        body: Container());
  }
}
