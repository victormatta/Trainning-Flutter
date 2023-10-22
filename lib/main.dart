import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    titleApp: "Pied Piper",
    textMain1: "Widget 1",
    textMain2: "Widget 2",
    textMain3: "Widget 3",
    textMain4: "Widget 4",
  ));
}

class MyApp extends StatefulWidget {
  final String? titleApp;
  final String? textMain1;
  final String? textMain2;
  final String? textMain3;
  final String? textMain4;

  const MyApp({
    super.key,
    this.titleApp,
    this.textMain1,
    this.textMain2,
    this.textMain3,
    this.textMain4,
  });

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
          backgroundColor: const Color.fromARGB(255, 255, 112, 102),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.textMain1!,
                  style: const TextStyle(
                      fontSize: 25, backgroundColor: Colors.red),
                ),
                Text(
                  widget.textMain1!,
                  style: const TextStyle(
                      fontSize: 25, backgroundColor: Colors.red),
                ),
                Text(
                  widget.textMain1!,
                  style: const TextStyle(
                      fontSize: 25, backgroundColor: Colors.red),
                ),
                Text(
                  widget.textMain1!,
                  style: const TextStyle(
                      fontSize: 25, backgroundColor: Colors.red),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(widget.textMain2!,
                    style: const TextStyle(
                        fontSize: 25, backgroundColor: Colors.blue)),
                Text(widget.textMain2!,
                    style: const TextStyle(
                        fontSize: 25, backgroundColor: Colors.blue)),
                Text(widget.textMain2!,
                    style: const TextStyle(
                        fontSize: 25, backgroundColor: Colors.blue)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(widget.textMain3!,
                    style: const TextStyle(
                        fontSize: 25, backgroundColor: Colors.yellow)),
                Text(widget.textMain3!,
                    style: const TextStyle(
                        fontSize: 25, backgroundColor: Colors.yellow)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.textMain4!,
                  style: const TextStyle(
                      fontSize: 25, backgroundColor: Colors.purple),
                ),
              ],
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 205, 212, 240),
      ),
    );
  }
}
