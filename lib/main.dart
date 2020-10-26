import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home : new MyApplication()
  ));
}
class MyApplication extends StatefulWidget {
  @override
  _State createState() => new _State();

}
class _State extends State<MyApplication> {

  int _value = 0;

  void _add() => setState(() => _value++);
  void _subtract() => setState(() => _value--);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.add), onPressed: _add),
          new IconButton(icon: new Icon(Icons.remove), onPressed: _subtract),
        ],
        title: new Text("Name here"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value.toString())
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}