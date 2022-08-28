import 'package:flutter/material.dart';
import 'package:pushuntil/screen_three.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen two'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('screen two'),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Screen3(),
                  ),
                );
              },
              child: const Text(
                'pushReplacement to screen 3',
              ),
            ),


            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Go back',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
