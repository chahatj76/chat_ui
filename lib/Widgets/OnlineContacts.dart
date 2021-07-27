import 'package:chat_ui/Models/message_model.dart';
import 'package:flutter/material.dart';

class OnlineContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: online.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(online[index].imageUrl),
                child: Stack(children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.pinkAccent,
                      ),
                    ),
                  ),
                ]),
              ),
            );
          }),
    );
  }
}
