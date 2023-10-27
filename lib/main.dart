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
          backgroundColor: const Color.fromARGB(255, 0, 122, 31),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Image.asset(
                    '../assets/images/piedpiper.jpeg',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ), // Espaçamento vertical entre os inputs
                  SizedBox(
                    width: 300,
                    child: Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
