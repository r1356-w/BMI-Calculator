import 'package:flutter/material.dart';

class FirstWidget extends StatefulWidget {
  const FirstWidget({super.key});

  @override
  State<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  late Color male, female;

  @override
  void initState() {
    male = female = const Color.fromARGB(255, 29, 10, 59);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                male = Colors.blue;
                female = const Color.fromARGB(255, 29, 10, 59);
              });
            },
            child: Container(
              margin: EdgeInsets.all(15),
              color: male,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.male,
                    size: 60,
                    color: Colors.white,
                  ),
                  Text("Male",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            child: Container(
                margin: EdgeInsets.all(15),
                color: female,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.female,
                      size: 60,
                      color: Colors.white,
                    ),
                    Text("female",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ],
                )),
            onTap: () {
              setState(() {
                female = Colors.pinkAccent;
                male = const Color.fromARGB(255, 29, 10, 59);
              });
            },
          ),
        ),
      ],
    );
  }
}
