import 'package:flutter/material.dart';
import 'package:method_and_class/class_screen.dart';
import 'package:method_and_class/method_screen.dart';
import 'package:method_and_class/not_comopnentize_screen.dart';
import 'package:method_and_class/riverpod/home_screen_riverpod.dart';

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
          children: [
            const Spacer(),
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const NotComopnentizeScreen();
                    },
                  ),
                );
              },
              child: const Text('コンポーネント化なし'),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const MethodScreen();
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
                      return const ClassScreen();
                    },
                  ),
                );
              },
              child: const Text('クラス'),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreenRiverpod();
                      },
                    ),
                  );
                },
                child: const Text('riverpod版へ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
