import 'package:flutter/material.dart';
import 'package:whatsapp_ui/chat_list.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/contact_list.dart';
import 'package:whatsapp_ui/web_chat_appBar.dart';
import 'package:whatsapp_ui/web_profile_bar.dart';
import 'package:whatsapp_ui/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Expanded(
        child: SingleChildScrollView(
          child: Column(
              children: [WebProfileBar(), WebSearchBar(), ContactList()]),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            WebChatAppBar(),
            Expanded(child: ChatList()),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  color: dividerColor,
                )),
                color: chatBarMessage,
              ),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: searchBarColor,
                          filled: true,
                          hintText: 'Type a message',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 0, style: BorderStyle.none)),
                          contentPadding: EdgeInsets.only(left: 20)),
                    ),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic,
                        color: Colors.grey,
                      )),
                ],
              ),
            )
          ],
        ),
      )
    ]));
  }
}
