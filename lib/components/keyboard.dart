import 'package:calculator/components/button.dart';
import 'package:calculator/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;
  const Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Color.fromRGBO(48, 48, 48, 1),
      child: Column(children: [
        ButtonRow([
          Button.dark(
            text: '%',
            cb: cb,
          ),
          Button.dark(
            text: 'CE',
            cb: cb,
          ),
          Button.dark(
            text: 'x²',
            cb: cb,
          ),
          Button.dark(
            text: '/',
            cb: cb,
          ),
        ]),
        SizedBox(
          height: 1,
        ),
        ButtonRow([
          Button(
            text: '7',
            cb: cb,
          ),
          Button(
            text: '8',
            cb: cb,
          ),
          Button(
            text: '9',
            cb: cb,
          ),
          Button.dark(
            text: 'x',
            cb: cb,
          ),
        ]),
        SizedBox(
          height: 1,
        ),
        ButtonRow([
          Button(
            text: '4',
            cb: cb,
          ),
          Button(
            text: '5',
            cb: cb,
          ),
          Button(
            text: '6',
            cb: cb,
          ),
          Button.dark(
            text: '-',
            cb: cb,
          ),
        ]),
        SizedBox(
          height: 1,
        ),
        ButtonRow([
          Button(
            text: '1',
            cb: cb,
          ),
          Button(
            text: '2',
            cb: cb,
          ),
          Button(
            text: '3',
            cb: cb,
          ),
          Button.dark(
            text: '+',
            cb: cb,
          ),
        ]),
        SizedBox(
          height: 1,
        ),
        ButtonRow([
          Button(
            text: '√x',
            cb: cb,
          ),
          Button(
            text: '0',
            cb: cb,
          ),
          Button(
            text: '.',
            cb: cb,
          ),
          Button.equals(
            text: '=',
            cb: cb,
          ),
        ]),
      ]),
    );
  }
}
