import 'package:chat_ui/src/provider/add_portrait_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPortrait extends StatelessWidget {
  const AddPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        elevation: 0,
        title: const Text(
          '添加系统画像',
        ),
        centerTitle: false,
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.check,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate(
            [
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: const Text(
                        '系统画像名称:',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Consumer(builder: (context, ref, child) {
                        final portraitNameController =
                            ref.read(portraitNameControllerProvider);
                        return TextField(
                          controller: portraitNameController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: '输入名称',
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff00d7f3), width: 2)),
                              labelStyle: TextStyle(color: Color(0xff00d7f3))),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          )),
          Consumer(builder: (context, ref, child) {
            final portraitMsgs = ref.watch(portraitMsgProvider);
            return SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) => Text(portraitMsgs[index]),
              childCount: portraitMsgs.length,
            ));
          }),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFF075E54),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 26,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
