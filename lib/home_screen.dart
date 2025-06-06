// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:color_screen/color_screen.dart';
import 'package:color_screen/components.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
            child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.5),
                    ])),
                child: const Text(
                  "Colors Screen",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ))),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 3,
          children: colorsList
              .map((colorItem) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ColorScreen(colorItem)));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 5, bottom: 10, right: 10, left: 10),
                      decoration: BoxDecoration(
                          color: colorItem,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(5, 5),
                                color: Colors.blueGrey,
                                blurRadius: 4)
                          ]),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
