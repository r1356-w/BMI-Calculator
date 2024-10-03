import 'package:application/screens/main_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.heights, required this.weight});
  final double heights;
  final int weight;
  @override
  Widget build(BuildContext context) {
    double Calculater = weight / (heights * heights);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 5, 32),
        title: const Center(
          child: Center(
            child: Text(
              "Your Results",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 16, 5, 32),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 29, 10, 59),
        ),
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  Calculater > 18.5 && Calculater <= 24.9
                      ? "Normal"
                      : "UnNormal",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Calculater <= 24.9 && Calculater > 18.5
                          ? Color.fromARGB(255, 119, 194, 113)
                          : const Color.fromARGB(255, 192, 91, 84)),
                ),
              ),
            ),
            Expanded(
                child: Text(
              Calculater.toStringAsFixed(1),
              style: TextStyle(fontSize: 100, color: Colors.white),
            )),
            Expanded(
                child: Text(
              Calculater > 18.5 && Calculater <= 24.9
                  ? "Congratulation"
                  : "OPS it is pad",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainScreen();
                }));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: const Color.fromARGB(255, 252, 0, 164),
                child: const Center(
                  child: Text(
                    "RE_Calculate",
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
      ),
    );
  }
}
