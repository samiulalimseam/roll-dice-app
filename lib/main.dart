import 'package:flutter/material.dart';
import 'package:roll_dice/gradiant_container_w.dart';

const gradStartColor = Color.fromARGB(255, 25, 9, 52);
const gradEndColor = Color.fromARGB(255, 66, 29, 131);
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: GradiantContainer(gradStartColor, gradEndColor),
    ),
  ));
}
