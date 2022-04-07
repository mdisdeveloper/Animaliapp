import 'package:animaliapp/navigation/settingsDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget{
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'user_name',
        ),
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index){
        return ListTile(
          title: Text('The list item #$index'),
          subtitle: const Text('The subtitle'),
          trailing: const Icon(Icons.arrow_drop_down),
          onTap: () {
            Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => SettingsDetails(index)));
          },
        );
      },
    );
  }
}