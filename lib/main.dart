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
    Key? key,
    this.titleApp,
    this.textMain1,
    this.textMain2,
    this.textMain3,
    this.textMain4,
  }) : super(key: key);

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/piedpiper.jpeg',
                width: 90,
                height: 90,
              ),
              const SizedBox(
                width: 300,
                child: Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Email'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 300,
                child: Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Password'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 0, 161, 40),
                      ),
                    ),
                    child: const Text('Login'),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
