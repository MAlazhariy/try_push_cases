import 'package:flutter/material.dart';
import 'package:pushuntil/screen_four.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen three'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('screen three'),
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Screen4(),
                  ),
                  (route) => false,
                );
              },
              child: const Text(
                'pushAndRemoveUntil to screen 4',
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
