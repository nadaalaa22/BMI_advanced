import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  const BmiResult({Key? key, required this.result, required this.title, required this.text}) : super(key: key);
  final int result;
  final String title ;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff008080),
      appBar: AppBar(
        backgroundColor: const Color(0xff008080),
        title: const Text(
          'BMI Calculatur ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: double.infinity,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Your Result',
              style: TextStyle(fontSize: 48,color: Colors.white),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(fontSize: 32,color: Colors.teal,fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20,),
                      Text(
                        '${result}',
                        style: const TextStyle(fontSize: 48),
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        'Normal BMI range:',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        '18.5 - 25 kg/m2',
                        style: TextStyle(fontSize: 24),
                      ),
                      const SizedBox(height: 20,),
                      Text(
                        text,
                        style: const TextStyle(fontSize: 24),
                      ),
                      const SizedBox(height: 100,),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'SAVE RESULT',
                          style: TextStyle(fontSize: 24,color: Colors.teal),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
        Container(
          width: double.infinity,

          child: MaterialButton(
            color: Color(0xff006666),
            height: 50.0,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'ReCalculate',
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
      ),
    );
  }
}
