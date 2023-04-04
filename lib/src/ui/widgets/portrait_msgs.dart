import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../provider/portrait_list.dart';

class PortraitItem extends StatelessWidget {
  const PortraitItem({required this.index, required this.msg, super.key});

  final int index;

  final Portrait msg;

  @override
  Widget build(BuildContext context) {
    final child = Card(
      elevation: 8,
      shadowColor: const Color(0xff2da9ef),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            msg.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Builder(builder: (context) {
          return GestureDetector(
            onLongPress: () {
              BotToast.showAttachedWidget(
                  targetContext: context,
                  attachedBuilder: (cancel) => Material(
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: () => cancel(),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              msg.msgs
                                  .fold(
                                      '',
                                      (previousValue, element) =>
                                        '$previousValue\n  $element')
                                  .replaceFirst(',', ''),
                              style: TextStyle(
                                color: Colors.blue.shade700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ));
            },
            child: Text(
              msg.msgs
                  .fold('',
                      (previousValue, element) => '$previousValue, $element')
                  .replaceFirst(', ', ''),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                color: Colors.blue.shade700,
                fontSize: 12,
              ),
            ),
          );
        }),
        trailing: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.blue.shade300,
              width: 1,
            ),
          ),
          child: Text(
            msg.source.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
    if (msg.source.value == 0) {
      return child;
    } else {
      return Slidable(
        key: ValueKey(msg.name),
        startActionPane: ActionPane(
          dragDismissible: false,
          motion: const ScrollMotion(),
          dismissible: DismissiblePane(onDismissed: () {}),
          children: [
            // const SizedBox(
            //   width: 2,
            // ),
            // SlidableAction(
            //   borderRadius: BorderRadius.circular(16),
            //   onPressed: (_) {},
            //   backgroundColor: const Color(0xff2da9ef),
            //   foregroundColor: Colors.white,
            //   icon: Icons.done_outline_rounded,
            //   label: 'Done',
            // ),
            // const SizedBox(
            //   width: 2,
            // ),
            // SlidableAction(
            //   borderRadius: BorderRadius.circular(16),
            //   onPressed: (_) {},
            //   backgroundColor: const Color(0xFFFE4A49),
            //   foregroundColor: Colors.white,
            //   icon: Icons.delete,
            //   label: 'Remove',
            // ),
          ],
        ),
        child: child,
      );
      ;
    }
  }
}
