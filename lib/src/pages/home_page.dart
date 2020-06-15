import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static const PrimaryColor = Colors.pink;
  final TextStyle textStyle =
      new TextStyle(fontFamily: 'RobotoMono', fontSize: 25);
  final contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Contador de taps'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Número de clicks: ', style: textStyle),
          Text(
            '$contador',
            style: textStyle,
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('hola!');
          
        },
      ),
    );
  }
}
