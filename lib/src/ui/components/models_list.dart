import 'package:chat_ui/src/provider/get_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ModelsList extends StatefulWidget {
  const ModelsList({super.key});

  @override
  State<ModelsList> createState() => _ModelsListState();
}

class _ModelsListState extends State<ModelsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        title: const Text(
          'ChatGPT chat',
          style: TextStyle(fontSize: 26),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.more_vert_outlined,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Consumer(builder: (context, ref, child) {
            final futureModels = ref.read(getModelsProvider.future);
            return FutureBuilder(
                future: futureModels,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Center(child: Text('Error'));
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasData) {
                    final models = snapshot.data;
                    return ListView.builder(
                      itemCount: models?.length ?? 0,
                      itemBuilder: (context, index) {
                        final model = models![index];
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(
                                //     builder: (context) =>
                                //         const Message_screeen(),
                                //   ),
                                // );
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
                        );
                      },
                    );
                  } else {
                    return const Center(child: Text('No data'));
                  }
                });
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF075E54),
        child: const Icon(
          Icons.comment,
          color: Colors.white,
        ),
      ),
    );
  }
}
