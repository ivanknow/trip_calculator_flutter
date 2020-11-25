import 'package:flutter/material.dart';

class MyTests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tests")),
        body: Container(
          child: Column(children: [
            HelloInput(),
            Text(
              "calma",
              textDirection: TextDirection.ltr,
            ),
          ]),
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
  final _currencies = ["Dollar", "Euro", 'Real'];
  String currency = 'Dollar';
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
        Text("Hello," + name),
        DropdownButton<String>(
            items: _currencies.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: currency,
            onChanged: (String value) {
              _onDropdownChange(value);
            })
      ],
    );
  }

  _onDropdownChange(value) {
    setState(() {
      this.currency = value;
    });
  }
}
