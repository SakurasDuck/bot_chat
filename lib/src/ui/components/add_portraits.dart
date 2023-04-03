import 'package:chat_ui/src/provider/add_portrait_state.dart';
import 'package:chat_ui/src/provider/portrait_list.dart';
import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPortrait extends StatelessWidget {
  const AddPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xffe5ddd5),
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Consumer(
            builder: (context, ref, child) => Stack(
                  children: [
                    Scaffold(
                      backgroundColor: Colors.transparent,
                      appBar: AppBar(
                        backgroundColor: const Color(0xFF075E54),
                        elevation: 0,
                        title: const Text(
                          '添加系统画像',
                        ),
                        centerTitle: false,
                        actions: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: GestureDetector(
                              onTap: () {
                                //保存画像
                                ref
                                    .read(chatPortraitProvider.notifier)
                                    .addPortrait(
                                        ref
                                            .read(
                                                getPortraitNameControllerProvider)
                                            .text,
                                        ref.read(getPortraitMsgProvider));
                              },
                              child: const Icon(
                                Icons.check,
                                size: 26,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      body: CustomScrollView(
                        slivers: [
                          SliverList(
                              delegate: SliverChildListDelegate(
                            [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 15, right: 15),
                                child: Consumer(builder: (context, ref, child) {
                                  final portraitNameController = ref
                                      .watch(getPortraitNameControllerProvider);
                                  return TextField(
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 16),
                                    controller: portraitNameController,
                                    decoration: const InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 2)),
                                      hintText: '请输入画像名称',
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 2)),
                                    ),
                                  );
                                }),
                              ),
                              const Padding(padding: EdgeInsets.only(top: 16)),
                              const Divider(
                                height: 2,
                                color: Color(0xFF075E54),
                              ),
                              const Padding(padding: EdgeInsets.only(top: 16)),
                            ],
                          )),
                          Consumer(builder: (context, ref, child) {
                            final portraitMsgs =
                                ref.watch(getPortraitMsgProvider);
                            return SliverList(
                                delegate: SliverChildBuilderDelegate(
                              (context, index) => Align(
                                alignment: Alignment.centerRight,
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width - 45,
                                  ),
                                  child: Card(
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    color: const Color(0xFFE1FFC7),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    child: IntrinsicWidth(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 30,
                                                top: 15,
                                                bottom: 15),
                                            child: Text(
                                              portraitMsgs[index],
                                              style: const TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
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
                                    onTap: () {
                                      ref
                                          .read(getShowEditMsgInputProvider
                                              .notifier)
                                          .onChange();
                                      //等待一帧渲染完成获取焦点
                                      WidgetsBinding.instance
                                          .addPostFrameCallback((timeStamp) {
                                        FocusScope.of(context).requestFocus(ref
                                            .read(getEditMsgFocusNodeProvider));
                                      });
                                    },
                                    child: Container(
                                      width: 60,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF075E54),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
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
                    ),
                    if (ref.watch(getShowEditMsgInputProvider))
                      //输入框
                      Positioned.fill(
                          child: GestureDetector(
                        onTap: () {
                          ref
                              .read(getShowEditMsgInputProvider.notifier)
                              .onChange();
                        },
                        child: Container(
                          color: Colors.black.withOpacity(0.5),
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 10, bottom: 5),
                            child: Consumer(
                              builder: (context, ref, child) {
                                final controller =
                                    ref.watch(getEditMsgControllerProvider);
                                return ExtendedTextField(
                                  focusNode:
                                      ref.read(getEditMsgFocusNodeProvider),
                                  expands: false,
                                  maxLines: 4,
                                  minLines: 1,
                                  controller: controller,
                                  onSubmitted: (text) {
                                    final chatStore = ref
                                        .read(getPortraitMsgProvider.notifier);
                                    //先失去焦点
                                    FocusScope.of(context).unfocus();
                                    chatStore.addMsg();
                                  },
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    suffixIcon: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: GestureDetector(
                                            onTap: () {
                                              final chatStore = ref.read(
                                                  getPortraitMsgProvider
                                                      .notifier);
                                              //先失去焦点
                                              FocusScope.of(context).unfocus();
                                              chatStore.addMsg();
                                            },
                                            child: ValueListenableBuilder(
                                                valueListenable: controller,
                                                builder:
                                                    (context, value, child) {
                                                  return Icon(
                                                    Icons.send,
                                                    color:
                                                        value.text.isNotEmpty ==
                                                                true
                                                            ? Colors.blue
                                                            : Colors.white,
                                                  );
                                                }))),
                                    hintText: '输入画像!',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ))
                  ],
                )),
      ),
    );
  }
}
