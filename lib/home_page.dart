// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'Widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? firstnum;
  int? secondnum;
  String history = '';
  String textToDisplay = '';
  String? operation;
  String? res;
  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstnum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondnum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstnum! + secondnum!).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '-') {
        res = (firstnum! - secondnum!).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == 'X') {
        res = (firstnum! * secondnum!).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '/') {
        res = (firstnum! / secondnum!).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("CALCULATOR"),
        backgroundColor: Colors.blueGrey[700],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                history,
                style: const TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 24.0,
                ),
              ),
            ),
            alignment: const Alignment(1.0, 1.0),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                textToDisplay,
                style: const TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 28.0,
                ),
              ),
            ),
            alignment: const Alignment(1.0, 1.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                buttonText: 'AC',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: 'C',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '<',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '/',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                buttonText: '9',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '8',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '7',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: 'X',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                buttonText: '6',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '5',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '4',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '-',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                buttonText: '3',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '2',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '1',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '+',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                buttonText: '+/-',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '0',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '00',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
              Button(
                buttonText: '=',
                buttonColor: Colors.black,
                callback: btnOnClick,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
