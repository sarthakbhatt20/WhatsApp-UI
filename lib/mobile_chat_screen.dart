import 'package:flutter/material.dart';
import 'package:whatsapp_ui/chat_list.dart';
import 'package:whatsapp_ui/colors.dart';
import 'info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        leadingWidth: 20,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
              radius: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(info[0]['name'].toString())
          ],
        ),
        leading: BackButton(),
        /* leading: FittedBox(
          fit: BoxFit.cover,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
            radius: 1,
          ),
        ),*/
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatList()),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: searchBarColor,
                        filled: true,
                        hintText: 'Type a message',
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.emoji_emotions_rounded,
                            color: Colors.grey,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.attach_file,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    Icons.currency_rupee_sharp,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    Icons.camera_alt_rounded,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 0, style: BorderStyle.none)),
                        contentPadding: EdgeInsets.all(10)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton.small(
                  onPressed: () {},
                  child: Icon(
                    Icons.send_rounded,
                    color: Colors.white,
                  ),
                  backgroundColor: tabColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
