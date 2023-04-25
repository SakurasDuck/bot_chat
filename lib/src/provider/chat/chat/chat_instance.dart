import '../../../models/chat_msg/down_message.dart';
import '../../../models/chat_msg/up_message.dart';
import '../../../models/message.dart';
import '../chat_interface.dart';

class ChatActionsInstance extends IChatActionProvider<UpMessage, DownMessage> {
  @override
  void clearCurrentMessages() {}

  // @override
  // void getMessage(downMsg) {

  // }

  @override
  Future<List<Message<UpMessage, DownMessage>>> loadingHistoryMessage() async {
    return <Message<UpMessage, DownMessage>>[];
  }

  @override
  Future<bool> sendMessage(Message upMsg) async {
    return false;
  }
  
  @override
  Message<UpMessage, DownMessage> convertUpMsg({required String msgId, required int now, upContent}) {
    // TODO: implement convertUpMsg
    throw UnimplementedError();
  }
}
