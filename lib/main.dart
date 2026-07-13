import 'package:flutter/material.dart';
import 'chat_item.dart';

void main() {
  runApp(const MyPage());
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> nama = [
      "Ferdinand",
      "Binsar",
      "Tobing",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ferdinand 253303610006'),
        ),
        body: ListView.builder(
          itemCount: nama.length,
          itemBuilder: (context, index) {
            return ChatItem(
              nama: nama[index],
            );
          },
        ),
      ),
    );
  }
}