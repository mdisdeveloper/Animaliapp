import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Passbook extends StatelessWidget{
  const Passbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Passbook & doctor recommendations",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}