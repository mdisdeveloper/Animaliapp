import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wellbeing extends StatelessWidget{
  const Wellbeing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          "Status of the pet & improvement plans",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}