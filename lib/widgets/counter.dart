import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter(
      {super.key,
      required this.number,
      required this.counter_name,
      required this.count});
  final int number;
  final String counter_name;
  final Function(int) count;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int count;
  late String name;
  @override
  void initState() {
    count = widget.number;
    name = widget.counter_name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color.fromARGB(255, 29, 10, 59),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$name",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xffF5E8C7)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "$count",
              style: const TextStyle(fontSize: 18, color: Color(0xffF5E8C7)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      print("dfghj");
                      setState(() {
                        count++;
                      });
                      widget.count(count);
                    },
                    icon: const Icon(
                      Icons.add_box,
                      size: 50,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                      widget.count(count);
                    },
                    icon: const Icon(
                      Icons.indeterminate_check_box,
                      size: 50,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
