import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(15, 15, 15, 0.5);
  static const DEFAULT = Colors.black;
  static const EQUALS = Colors.purple;
  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = DEFAULT,
      required this.cb})
      : super(key: key);
  const Button.big(
      {Key? key,
      required this.text,
      this.big = true,
      this.color = DARK,
      required this.cb})
      : super(key: key);
  const Button.dark(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = DARK,
      required this.cb})
      : super(key: key);
  const Button.equals(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = EQUALS,
      required this.cb})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.w100),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
