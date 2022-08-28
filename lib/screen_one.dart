import 'package:flutter/material.dart';
import 'package:pushuntil/screen_two.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen one'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('screen one'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Screen2(),
                  ),
                );
              },
              child: const Text(
                'push to screen 2',
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
