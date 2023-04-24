# 聊天列表接口

## 功能 :

- 对话
- 单个问题
- 生成图片
- 翻译

## 通用接口 :

### 功能 :

- send_message : 发送消息
- get_message : 获取消息(回调)
- load_history_messages : 加载历史消息
- clear_current_messages : 清空当前消息

### UI :

- message_item : 消息item(自己发的(文字, 语音), 收到的(图片, 文字))
- message_input : 消息输入框(语音消息, 文字消息)
- drawer_menus : 抽屉菜单(设置)