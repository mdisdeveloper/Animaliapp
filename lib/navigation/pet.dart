import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pet extends StatelessWidget{
  const Pet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}