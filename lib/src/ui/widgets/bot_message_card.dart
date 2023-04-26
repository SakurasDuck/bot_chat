import 'package:chat_ui/src/models/message.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BotMessageCard extends StatelessWidget {
  const BotMessageCard({
    Key? key,
    required this.downMessageBuilder,
    required this.message,
  }) : super(key: key);
  final Widget Function() downMessageBuilder;

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 30,
                    top: 5,
                    bottom: 20,
                  ),
                  child: downMessageBuilder()),
              Positioned(
                bottom: 2,
                right: 10,
                child: Text(
                  DateFormat('HH:mm').format(
                      DateTime.fromMillisecondsSinceEpoch(message.createTime)),
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
