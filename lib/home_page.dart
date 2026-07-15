import 'package:flutter/material.dart';
import 'chat_model.dart';
import 'chat_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<ChatModel> chats = [

    ChatModel(
      nama: "Arya",
      pesan: "woi kau dah siap uas?",
      waktu: "09:15",
      avatar: "img/arya.jpeg",
      dibaca: true,
    ),

    ChatModel(
      nama: "Felix",
      pesan: "Login aja nan",
      waktu: "09:30",
      avatar: "img/felik.jpeg",
      dibaca: false,
    ),

    ChatModel(
      nama: "Sisi x sisi x sisi",
      pesan: "belik matcha yok nanti",
      waktu: "10:45",
      avatar: "img/sisi.jpeg",
      dibaca: true,
    ),

    ChatModel(
      nama: "filia",
      pesan: "okey",
      waktu: "Kemarin",
      avatar: "img/asia.jpeg",
      dibaca: true,
    ),

    ChatModel(
      nama: "Andre",
      pesan: "Perpus kau lek?",
      waktu: "Senin",
      avatar: "img/andre.jpeg",
      dibaca: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.green.shade50,

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "FERDINAND 253303610006",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: const [

          Icon(Icons.camera_alt,color: Colors.white),

          SizedBox(width:15),

          Icon(Icons.search,color: Colors.white),

          SizedBox(width:15),

          Icon(Icons.more_vert,color: Colors.white),

          SizedBox(width:10),

        ],
      ),

        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),

          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cari chat...",
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    return ChatItem(chat: chats[index]);
                  },
                ),
              ),

            ],
          ),
        ),
    );
  }
}