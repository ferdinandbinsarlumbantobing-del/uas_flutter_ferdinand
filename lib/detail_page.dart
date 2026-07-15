import 'package:flutter/material.dart';
import 'chat_model.dart';

class DetailPage extends StatelessWidget {

  final ChatModel chat;

  const DetailPage({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Halaman Kedua"),
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(chat.avatar),
            ),

            SizedBox(height:25),

            Text(
              "Halo ${chat.nama} 👋",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height:15),

            Text(
              "Selamat datang di halaman kedua.",
              style: TextStyle(fontSize:18),
            ),

            SizedBox(height:8),

            Text(
              "Terima kasih telah membuka Project UAS Flutter.",
            ),

            SizedBox(height:30),

            ElevatedButton(

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),

              onPressed: (){
                Navigator.pop(context);
              },

              child: const Text("← Kembali"),

            ),

          ],
        ),
      ),
    );
  }
}