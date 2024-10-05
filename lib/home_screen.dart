import 'package:flutter/material.dart';
import 'package:method_and_class/class_screen.dart';
import 'package:method_and_class/method_screen.dart';

final List<bool> isLikedList = List.generate(1000, (index) => false);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return MethodScreen();
                    },
                  ),
                );
              },
              child: const Text('メソッド'),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ClassScreen();
                    },
                  ),
                );
              },
              child: const Text('クラス'),
            ),
          ],
        ),
      ),
    );
  }
}
