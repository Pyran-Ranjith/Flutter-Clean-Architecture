import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      // 1st box
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            // 1st box
          // Center(
             Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
              ),
            ),

            // 2nd box
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.deepPurple[400],
              ),
            ),
   
            // 3rd box
            Expanded(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[200],
                ),
              ),
            ),
     ],
      ),
    );
  }
}
