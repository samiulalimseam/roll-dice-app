import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 60, 10, 147),
          Color.fromARGB(255, 29, 1, 93)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text(
          'Hello23 World',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    )),
  ));
}
