import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen2.dart';

class Fisrt extends StatelessWidget {
  Fisrt({super.key});
  String _image = 'assets/images/mine.jpeg';
  String _name = "Daahir Mohamed Ali";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
        centerTitle: true,
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(children: [
        Container(child: Image.asset(_image)),
        Container(margin: EdgeInsets.only(top: 30), child: Text(_name)),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, "Second_Scren");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => Second_Scren(
                            name: _name,
                            image: _image,
                          )));
            },
            child: Text('Go Second'),
          ),
        )
      ]),
    );
  }
}
