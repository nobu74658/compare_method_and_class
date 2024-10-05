import 'package:flutter/material.dart';
import 'package:method_and_class/home_screen.dart';

class NotComopnentizeScreen extends StatefulWidget {
  const NotComopnentizeScreen({super.key});

  @override
  State<NotComopnentizeScreen> createState() => _NotComopnentizeScreenState();
}

class _NotComopnentizeScreenState extends State<NotComopnentizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('コンポーネント化なし'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isLikedList[0] = !isLikedList[0];
                });
              },
              child: ListTile(
                title: const Text('Item 0'),
                subtitle: Text(DateTime.now().toString()),
                trailing: isLikedList[0]
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isLikedList[1] = !isLikedList[1];
                });
              },
              child: ListTile(
                title: const Text('Item 1'),
                subtitle: Text(DateTime.now().toString()),
                trailing: isLikedList[1]
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isLikedList[2] = !isLikedList[2];
                });
              },
              child: ListTile(
                title: const Text('Item 2'),
                subtitle: Text(DateTime.now().toString()),
                trailing: isLikedList[2]
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isLikedList[3] = !isLikedList[3];
                });
              },
              child: ListTile(
                title: const Text('Item 3'),
                subtitle: Text(DateTime.now().toString()),
                trailing: isLikedList[3]
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isLikedList[4] = !isLikedList[4];
                });
              },
              child: ListTile(
                title: const Text('Item 4'),
                subtitle: Text(DateTime.now().toString()),
                trailing: isLikedList[4]
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
