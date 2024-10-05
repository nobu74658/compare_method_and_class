import 'package:flutter/material.dart';
import 'package:method_and_class/home_screen.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('クラスで実装'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(1000, (index) {
            return _ListTile(index: index);
          }),
        ),
      ),
    );
  }
}

class _ListTile extends StatefulWidget {
  const _ListTile({required this.index});

  final int index;

  @override
  State<_ListTile> createState() => _ListTileState();
}

class _ListTileState extends State<_ListTile> {
  @override
  Widget build(BuildContext context) {
    debugPrint('Item ${widget.index} build');
    return InkWell(
      onTap: () {
        setState(() {
          isLikedList[widget.index] = !isLikedList[widget.index];
        });
      },
      child: ListTile(
        title: Text('Item ${widget.index}'),
        subtitle: Text(DateTime.now().toString()),
        trailing: isLikedList[widget.index]
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border),
      ),
    );
  }
}
