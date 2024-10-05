import 'package:flutter/material.dart';
import 'package:method_and_class/riverpod/class_screen_riverpod.dart';
import 'package:method_and_class/riverpod/method_screen_riverpod.dart';

class HomeScreenRiverpod extends StatelessWidget {
  const HomeScreenRiverpod({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム (riverpod)'),
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
                      return const MethodScreenRiverpod();
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
                      return const ClassScreenRiverpod();
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
