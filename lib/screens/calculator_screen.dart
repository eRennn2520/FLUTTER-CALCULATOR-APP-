import 'package:flutter/material.dart';
import '../widgets/calculator_button.dart';
import '../utils/calculator_logic.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = "0";
  String _expression = "";

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "=") {
        _output = calculateExpression(_expression);
        _expression = "";
      } else if (buttonText == "AC") {
        _output = "0";
        _expression = "";
      } else {
        if (_output == "0") {
          _output = buttonText;
        } else {
          _output += buttonText;
        }
        _expression += buttonText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        surfaceTintColor: Theme.of(context).appBarTheme.surfaceTintColor,
        actions: [],
        title: Text(
          'Hesap Makinesi',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
              child: Text(
                _output,
                style:
                    const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                children: <String>[
                  'C',
                  '%',
                  '÷',
                  '×',
                  '7',
                  '8',
                  '9',
                  '−',
                  '4',
                  '5',
                  '6',
                  '+',
                  '1',
                  '2',
                  '3',
                  '=',
                  'AC',
                  '0',
                  '.',
                  ''
                ].map((label) {
                  return CalculatorButton(
                    text: label,
                    onPressed: () => _buttonPressed(label),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
