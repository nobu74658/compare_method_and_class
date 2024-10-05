import 'package:flutter/material.dart';
import 'package:method_and_class/home_screen.dart';

class MethodScreen extends StatefulWidget {
  const MethodScreen({super.key});

  @override
  State<MethodScreen> createState() => _MethodScreenState();
}

class _MethodScreenState extends State<MethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('メソッドで実装'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(1000, (index) {
            return _buildItem(index: index);
          }),
        ),
      ),
    );
  }

  Widget _buildItem({required int index}) {
    debugPrint('Item $index build');
    return InkWell(
      onTap: () {
        setState(() {
          isLikedList[index] = !isLikedList[index];
        });
      },
      child: ListTile(
        title: Text('Item $index'),
        subtitle: Text(DateTime.now().toString()),
        trailing: isLikedList[index]
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border),
      ),
    );
  }
}
