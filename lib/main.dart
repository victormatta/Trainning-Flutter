import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    titleApp: "Pied Piper",
    textMain:
        "Pied Piper is a company created in Silicon Valley by Richard and his friends.",
  ));
}

class MyApp extends StatefulWidget {
  final String? titleApp;
  final String? textMain;
  const MyApp({super.key, this.titleApp, this.textMain});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.titleApp!),
        ),
        body: Center(
          child: Text(widget.textMain!),
        ),
      ),
    );
  }
}
