import 'package:chat_ui/src/provider/model_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../widgets/refresh.dart';

class ModelsList extends StatelessWidget {
  const ModelsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (builder, ref, child) {
      final modelListEffect = ref.watch(modelListEffectProvider);
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF075E54),
          title: const Text(
            'ChatGPT Models',
            style: TextStyle(fontSize: 26),
          ),
        ),
        body: Consumer(builder: (context, ref, child) {
          final modelListState = ref.watch(modelListStateProvider);
          return Refresh(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final model = modelListState[index];
                  final checked = modelListEffect == model.id;
                  return Container(
                    margin: const EdgeInsets.all(2),
                    decoration: checked
                        ? BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          )
                        : null,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            ref
                                .read(modelListEffectProvider.notifier)
                                .onChange(model.id);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: ListTile(
                              title: Text(
                                model.id,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Text(
                                  model.owned_by,
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ),
                              trailing: Text(
                                model.object,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: modelListState.length,
              ),
              refreshFunc: () async =>
                  ref.read(modelListStateProvider.notifier).onRefresh());
        }),
        floatingActionButton: ref.watch(modelCanSaveProvider)
            ? FloatingActionButton(
                onPressed: () {
                  ref.read(modelListEffectProvider.notifier).onSave();
                  context.pop();
                },
                backgroundColor: const Color(0xFF075E54),
                child: const Icon(
                  Icons.done,
                  size: 26,
                  color: Colors.white,
                ),
              )
            : null,
      );
    });
  }
}
