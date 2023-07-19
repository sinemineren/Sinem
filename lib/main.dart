import 'package:flutter/material.dart';
import 'package:first_app/gradient_containers.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 3, 1, 6),
          Color.fromARGB(255, 210, 133, 9),
        ),
      ),
    ),
  );
}
