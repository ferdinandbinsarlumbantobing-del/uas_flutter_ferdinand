import 'package:flutter/material.dart';
import 'chat_model.dart';
import 'detail_page.dart';

class ChatItem extends StatelessWidget {

  final ChatModel chat;

  const ChatItem({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(

      onTap: (){

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailPage(chat: chat),
          ),
        );

      },

      child: Card(

        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),

        child: ListTile(

          leading: CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(chat.avatar),
          ),

          title: Text(
            chat.nama,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          subtitle: Row(

            children: [

              Icon(
                Icons.done_all,
                color: chat.dibaca
                    ? Colors.blue
                    : Colors.grey,
                size: 18,
              ),

              SizedBox(width:5),

              Expanded(
                child: Text(chat.pesan),
              ),

            ],
          ),

          trailing: Text(chat.waktu),

        ),
      ),
    );

  }
}