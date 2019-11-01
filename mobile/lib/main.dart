// Flutter code sample for

// This example shows a [Scaffold] with a [body] and [FloatingActionButton].
// The [body] is a [Text] placed in a [Center] in order to center the text
// within the [Scaffold]. The [FloatingActionButton] is connected to a
// callback that increments a counter.
//
// ![A screenshot of the Scaffold widget with a body and floating action button](https://flutter.github.io/assets-for-api-docs/assets/material/scaffold.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          new DrawerHeader(
            child: Text('Ramirez Gonçalves App'),
            decoration: new BoxDecoration(color: Colors.orange),
          ),
          new ListTile(
            title: new Text("Primeiro item!"),
            onTap: () {},
          ),
          new ListTile(
            title: new Text("Segundo item!"),
            onTap: () {},
          ),
          new ListTile(
            title: new Text("Terceiro item!"),
            onTap: () {},
          ),

        ]),
      ),
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),


      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
