import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(title: Text("Appbar")),
          body: Container(child: HelloInput()),
        ));
  }
}

class HelloInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HelloInputState();
  }
}

class _HelloInputState extends State<HelloInput> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(hintText: "Name"),
          onChanged: (String param) {
            setState(() {
              name = param;
            });
          },
        ),
        Text("Hello," + name)
      ],
    );
  }
}
