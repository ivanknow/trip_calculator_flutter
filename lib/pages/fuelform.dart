import 'package:flutter/material.dart';

class FuelForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FuelFormState();
  }
}

class _FuelFormState extends State<FuelForm> {
  String ajuda = "teste";
  TextEditingController distanceFieldCtrl = TextEditingController();
  TextEditingController avgCtrl = TextEditingController();
  TextEditingController priceCtrl = TextEditingController();

  String _calculate() {
    double _dist = double.parse(distanceFieldCtrl.text);
    double _avg = double.parse(avgCtrl.text);
    double _price = double.parse(priceCtrl.text);
    return (_dist / _avg * _price).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    TextStyle txs = Theme.of(context).textTheme.headline6;

    return Scaffold(
      appBar: AppBar(
        title: Text("Cost"),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: distanceFieldCtrl,
              decoration: InputDecoration(
                  labelText: "Distance",
                  hintText: "e.g : 124",
                  labelStyle: txs,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: avgCtrl,
              decoration: InputDecoration(
                  labelText: "Distance per unit",
                  hintText: "e.g : 17",
                  labelStyle: txs,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: priceCtrl,
              decoration: InputDecoration(
                  labelText: "Price",
                  hintText: "e.g : 1.6",
                  labelStyle: txs,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              keyboardType: TextInputType.number,
            ),
            RaisedButton(
                color: Theme.of(context).primaryColorDark,
                textColor: Theme.of(context).primaryColorLight,
                child: Text("Submit"),
                onPressed: () {
                  setState(() {
                    ajuda = _calculate();
                  });
                }),
            Text(ajuda)
          ],
        ),
      ),
    );
  }
}
