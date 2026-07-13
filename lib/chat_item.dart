import 'package:flutter/material.dart';
import 'login_page.dart';

class ChatItem extends StatelessWidget {
  final String nama;

  const ChatItem({
    super.key,
    required this.nama,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(nama: nama),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('img/avatar.jpg.jpeg'),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nama,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),

                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.blue),
                            SizedBox(width: 5),
                            Text("Halo"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const Text(
                  "Online",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),

          const Text(
            "Ini adalah pembatas",
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}