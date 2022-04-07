import 'package:flutter/material.dart';
import 'package:animaliapp/navigation/settings.dart';
class SettingsDetails extends StatefulWidget {
  final int _index;

  const SettingsDetails(this._index);

  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text(
         'titulo del ajuste seleccionado'
       ),
     ),
     body: Center(child: Text('Details of #$_index'),
     ),
   );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}