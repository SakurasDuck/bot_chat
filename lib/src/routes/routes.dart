part of 'pages.dart';

///这里可能是因为const原因,无法重写 operator +(String other) 叠加路由

abstract class Routes {
  static const SPLASH = _Path.splash;
  static const CHAT = _Path.chat;
  static const CHAT_MODEL = '${_Path.chat}/${_Path.models}';
  static const PORTRAITS = '${_Path.chat}/${_Path.portraits}';
  static const ADD_PORTRAIT =
      '${_Path.chat}/${_Path.portraits}/${_Path.addPortrait}';
}

//其中,顶级路由带有/
abstract class _Path {
  static const splash = '/';
  static const chat = '/chat';
  static const models = 'models';
  static const portraits = 'portraits';
  static const addPortrait = 'add_portrait';
}
