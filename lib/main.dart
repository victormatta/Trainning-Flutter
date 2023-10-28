import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp(
    name: "Victor [Shockz ⚡]",
  ));
}

class MyApp extends StatefulWidget {
  final String? name;
  const MyApp({super.key, this.name});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void biggerSalary(int value) {
    setState(() {
      if (kDebugMode) {
        print("CLICKKKKKKK");
        print("Last Salary: $salary");
      }

      salary = salary + value;

      if (kDebugMode) {
        print("Currently Salary: $salary");
      }
    });
  }

  void smallerSalary(int value) {
    setState(() {
      if (kDebugMode) {
        print("CLICKKKKKKK");
        print("Last Salary: $salary");
      }

      salary = salary - value;

      if (kDebugMode) {
        print("Currently Salary: $salary");
      }
    });
  }

  int salary = 2000;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (salary <= 5000) {
            biggerSalary(500);
          } else {
            smallerSalary(100);
          }
        },
        child: Text(
          "My name is ${widget.name} and my salary is $salary",
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
