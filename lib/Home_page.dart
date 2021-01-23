import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  var num1,num2,sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void addi(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void subs(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void multi(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void divi(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1~/num2;
    });
  }
  void clear(){
    t1.clear();
    t2.clear();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator_App"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Text("Result: $sum",
              style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter First Number",
                ),
                controller: t1,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    hintText: "Enter Second Number",
                ),
                controller: t2,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Padding(padding: const EdgeInsets.only(bottom: 10.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+"),
                    color: Colors.grey,
                    onPressed: addi,
                  ),
                  new MaterialButton(
                    child: new Text("-"),
                    color: Colors.grey,
                    onPressed: subs,
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("*"),
                    color: Colors.grey,
                    onPressed: multi,
                  ),
                  new MaterialButton(
                    child: new Text("/"),
                    color: Colors.grey,
                    onPressed: divi,
                  ),
                ],
              ),
              new MaterialButton(
                child: new Text("Clear"),
                color: Colors.grey,
                onPressed: clear,
              ),
            ],
          ),
      ),
    );
  }

}