enum Role implements Comparable<String> {
  system('system'), //系统
  user('user'), //用户
  assistant('assistant'); //助手

  const Role(this.value);

  @override
  String toString() => value;

  @override
  int compareTo(String other) => value.compareTo(other);

  final String value;
}
