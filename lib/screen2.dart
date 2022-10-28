import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Second_Scren extends StatelessWidget {
  Second_Scren({super.key, this.name, this.image});
  String? name;
  String? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
        centerTitle: true,
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Container(child: Image.asset(image!)),
          Container(margin: EdgeInsets.only(top: 30), child: Text(name!)),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go Back')),
          )
        ],
      ),
    );
  }
}
