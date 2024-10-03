import 'package:flutter/material.dart';

class SecoundScreen extends StatefulWidget {
  const SecoundScreen({super.key, required this.onChanged});
  final Function(double) onChanged;

  @override
  State<SecoundScreen> createState() => SecoundWidgets();
}

class SecoundWidgets extends State<SecoundScreen> {
  late double height;
  @override
  void initState() {
    height = 150;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(),
              color: Color.fromARGB(255, 29, 10, 59),
            ),
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Height",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
                Text(
                  "${height.toInt()}",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Slider(
                  value: height,
                  min: 150,
                  max: 200,
                  activeColor: Color.fromARGB(255, 252, 0, 164),
                  onChanged: (newa) {
                    setState(() {
                      height = newa;
                    });
                    widget.onChanged(height);
                  },
                  label: "$height ",
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
