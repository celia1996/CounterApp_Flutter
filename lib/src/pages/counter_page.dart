import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  static const _PrimaryColor = Colors.pink;
  final TextStyle _textStyle =
      new TextStyle(fontFamily: 'RobotoMono', fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: _PrimaryColor,
          title: Text('WallsOut'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks: ', style: _textStyle),
            Text(
              '$_counter',
              style: _textStyle,
            ),
          ],
        )),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _decrease,
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add),
        )
      ],
    );
  }

  void _add(){
    setState(() => _counter++ );
  }

  void _reset(){
    setState(() => _counter=0 );
  }

  void _decrease(){
    setState(() => _counter-- );
  }
}
