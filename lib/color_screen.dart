import 'package:color_screen/home_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColorScreen extends StatefulWidget {
  ColorScreen(this.screenColor, {super.key});

  Color screenColor;

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      color: widget.screenColor,
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.amber)),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Text("back")),
    );
  }
}
