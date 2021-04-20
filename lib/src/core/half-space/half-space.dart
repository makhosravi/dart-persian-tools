String halfSpace(String expression) {
  if (expression.isEmpty) return expression;

  final result = expression
      .replaceAll(r'/\u00ad/', '‌')
      .replaceAll(r'/\u200C{2,}/', '‌')
      .replaceAllMapped(r'/([۰-۹0-9إأةؤورزژاآدذ،؛,:«»\\/@#$٪×*()ـ\-=|])\u200c/', (m) => '${m[0]}')
      .replaceAllMapped(
          r'/\u200c([\u064e\u0650\u064f\u064b\u064d\u064C\u0651\u06C0])/', (m) => '${m[0]}')
      .replaceAllMapped(r'/\u200c([\w])/', (m) => '${m[0]}')
      .replaceAllMapped(r'/([\w])\u200c/', (m) => '${m[0]}')
      .replaceAllMapped(r'/\u200c([\n\s[].،«»:()؛؟?;$!@-=+\\])/', (m) => '${m[0]}')
      .replaceAllMapped(r'/([\n\s[.،«»:()؛؟?;$!@\-=+\\])\u200c/', (m) => '${m[0]}')
      .replaceAll(r'/\s+\u200C|\u200C\s+/', ' ')
      .replaceAllMapped(r'/((\s|^)ن?می)\u0020/', (m) => '${m[0]}')
      .replaceAllMapped(r'/((\s|^)بی)\u0020/', (m) => '${m[0]}')
      .replaceAllMapped(r'/\u0020((ام|ات|اش|ای|اید|ایم|اند)\s)/', (m) => '${m[0]}')
      .replaceAllMapped(r'/\u0020(ها(ی)?\s)/', (m) => '${m[0]}')
      .replaceAllMapped(r'/\u0020(تر((ی)|(ین))?\s)/', (m) => '${m[0]}')
      .replaceAllMapped(
          r'/\u0020((هایی|هایم|هایت|هایش|هایمان|هایتان|هایشان)\s)/', (m) => '${m[0]}');

  return result;
}

extension HalfSpace on String {
  String get fixHalfSpaces => halfSpace(this);
}
