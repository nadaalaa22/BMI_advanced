import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz2/data/models/result.dart';
import 'package:quiz2/presentation/pages/bmi_result.dart';

import '../widgets/age_weight.dart';
import '../widgets/male_female.dart';

class BmiHomeScreen extends StatefulWidget {
  const BmiHomeScreen({Key? key}) : super(key: key);

  @override
  State<BmiHomeScreen> createState() => _BmiHomeScreenState();
}

class _BmiHomeScreenState extends State<BmiHomeScreen> {
   Result result = Result(40, 20, 130, true, 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'BMI calculatur ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: GenderSelection(
                    text: 'Male',
                    isSelected: result.isMale,
                    onTap: (selected) {
                      setState(() {
                        result.isMale = selected;
                      });
                    }, imageUrl: 'assets/images/male.png',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GenderSelection(
                    text: 'Female',
                    isSelected: !result.isMale,
                    onTap: (selected) {
                      setState(() {
                        result.isMale = !selected;
                      });
                    }, imageUrl: 'assets/images/female-removebg-preview.png',
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${result.height.round()}',
                          style: const TextStyle(
                              fontSize: 40.0, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Slider(
                      value: result.height,
                      min: 80.0,
                      max: 220.0,
                      thumbColor: Colors.black,
                      activeColor: Colors.black,
                      inactiveColor: Colors.grey[300],
                      onChanged: (value) {
                        setState(() {
                          result.height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              AgeWeight(
                text: 'Age',
              ),
              AgeWeight(
                text: 'Weight',
              ),
            ],
          ),
          Container(
            width: double.infinity,
            color: Colors.black,
            child: MaterialButton(
              color: Colors.teal,
              height: 50.0,
              onPressed: () {
                result.calcResult = AgeWeight.initNumber / pow(result.height / 100, 2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BmiResult(
                        result: result,
                          ),
                  ),
                );
              },
              child: const Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
