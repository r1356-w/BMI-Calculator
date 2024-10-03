import 'package:application/screens/second_screen.dart';
import 'package:application/widgets/first_widgets.dart';
import 'package:application/widgets/secound_widgets.dart';
import 'package:application/widgets/counter.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double x = 0;
    int y = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 5, 32),
        title: const Center(
          child: Text(
            "BMI Calculater",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 16, 5, 32),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: FirstWidget()),
          Expanded(
            child: SecoundScreen(
              onChanged: (onchange) {
                x = onchange;
              },
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Counter(
                    number: 50,
                    counter_name: "Weight",
                    count: (weight) {
                      y = weight;
                    }),
                Counter(
                  number: 18,
                  counter_name: "Age",
                  count: (age) {},
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SecondScreen(
                    heights: x / 100,
                    weight: y,
                  );
                }),
              );
            },
            child: Container(
              height: 50,
              width: double.infinity,
              color: const Color.fromARGB(255, 252, 0, 164),
              child: const Center(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
