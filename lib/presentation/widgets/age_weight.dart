import 'package:flutter/material.dart';

class AgeWeight extends StatefulWidget {
  AgeWeight({Key? key, required this.text}) : super(key: key);

  final String text;
  static int initNumber = 20; // Declare initNumber as a static variable

  @override
  State<AgeWeight> createState() => _AgeWeightState();
}

class _AgeWeightState extends State<AgeWeight> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.text,
                      style: const TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      AgeWeight.initNumber.toString(), // Access initNumber as a static variable
                      style: const TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              AgeWeight.initNumber--; // Update initNumber as a static variable
                            });
                          },
                          heroTag: 'age-',
                          backgroundColor: Colors.black,
                          mini: true,
                          child: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              AgeWeight.initNumber++; // Update initNumber as a static variable
                            });
                          },
                          heroTag: 'age+',
                          backgroundColor: Colors.black,
                          mini: true,
                          child: const Icon(Icons.add, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
