import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../provider/portrait_list.dart';

class PortraitItem extends StatelessWidget {
  const PortraitItem({required this.index,required this.msg, super.key});

  final int index;

  final Portrait msg;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(msg.name),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          const SizedBox(
            width: 2,
          ),
          SlidableAction(
            borderRadius: BorderRadius.circular(16),
            onPressed: (_) {},
            backgroundColor: const Color(0xff2da9ef),
            foregroundColor: Colors.white,
            icon: Icons.done_outline_rounded,
            label: 'Done',
          ),
          const SizedBox(
            width: 2,
          ),
          SlidableAction(
            borderRadius: BorderRadius.circular(16),
            onPressed: (_) {},
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Remove',
          ),
        ],
      ),
      child: Card(
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
          // minLeadingWidth: task.isDone ? 0 : 2,
          // leading: task.isDone
          //     ? const SizedBox()
          //     : Container(
          //         width: 2,
          //         color: const Color(0xff2da9ef),
          //       ),
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
          subtitle: Text(
            msg.msgs.fold(
                '', (previousValue, element) => '$previousValue, $element'),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              color: Colors.blue.shade700,
              fontSize: 16,
            ),
          ),
          trailing: Text(
            index.toString(),
            style: const TextStyle(
              color: Colors.black45,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
    ;
  }
}
