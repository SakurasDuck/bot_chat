import 'package:flutter/material.dart';

import '../../services/chat_state.dart';

class SendMessageCard extends StatelessWidget {
  final String message;
  final String date;
  final SendMessageStatus sendStatus;
  const SendMessageCard(
      {Key? key,
      required this.sendStatus,
      required this.message,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: const Color(0xFFE1FFC7),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                ),
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(
                  bottom: 5,
                  right: 10,
                  left: 10,
                ),
                child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 20,
                      width: 20,
                      child: Builder(builder: (context) {
                        if (sendStatus == SendMessageStatus.SENT) {
                          return const Icon(
                            Icons.done,
                            size: 20,
                            color: Colors.blueAccent,
                          );
                        } else if (sendStatus == SendMessageStatus.SENDING) {
                          return const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                            ),
                          );
                        } else if (sendStatus == SendMessageStatus.ERROR) {
                          return GestureDetector(
                            onTap: () {
                              //todo resend message
                            },
                            child: const Icon(
                              Icons.refresh,
                              size: 20,
                              color: Colors.red,
                            ),
                          );
                        }
                        return const Icon(
                          Icons.sync,
                          size: 20,
                          color: Colors.grey,
                        );
                      }),
                    )
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
