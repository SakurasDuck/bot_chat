import 'package:extended_text/extended_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class CodeView extends RegExpSpecialText {
  CodeView({this.height = 200, this.width = 200});
  final double height;

  final double width;

  static const String _regExp = '```.*?```';

  @override
  RegExp get regExp =>
      RegExp(_regExp, multiLine: true, dotAll: true, caseSensitive: true);

  @override
  InlineSpan finishText(int start, Match match,
      {TextStyle? textStyle, SpecialTextGestureTapCallback? onTap}) {
    return WidgetSpan(
        child: SizedBox(
      // width: width,
      // height: height,
      child: Markdown(
        shrinkWrap: true,
        data: match.group(0) ?? '',
      ),
    ));
  }
}

class MySpecialTextSpanBuilder extends RegExpSpecialTextSpanBuilder {
  MySpecialTextSpanBuilder(this.width);

  final double width;

  @override
  List<RegExpSpecialText> get regExps => [CodeView(width: width)];
}
