import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    title: "Pied Piper",
    bodyText: "Hello, My name is Victor [Shockz ⚡] and I am ",
    bodyAge: 19,
  ));

  // runApp(
  //   MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: const Text("New App"),
  //       ),
  //       body: const Center(
  //         child: Text(
  //           "Hello, World!",
  //           style: TextStyle(fontSize: 50, color: Colors.black),
  //         ),
  //       ),
  //     ),
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  final String? title;
  final String? bodyText;
  final int? bodyAge;
  const MyApp({super.key, this.title, this.bodyText, this.bodyAge});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: Center(
          child: Text(
            bodyText! + bodyAge.toString(),
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
