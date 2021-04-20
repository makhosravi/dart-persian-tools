import 'package:dart_persian_tools/dart_persian_tools.dart';
import 'package:test/test.dart';

void main() {
  group('test half_space.dart', () {
    test('test halfSpace function', () {
      /// empty string
      expect(halfSpace(''), equals(''));


      expect(
        'این یک متن فارسی می‌باشد؟',
        equals(halfSpace('این یک متن فارسی می باشد؟')),
      );

      expect(
        'ای دوست سلام من به تو. نمی‌خواهمت درخت‌های چنار هاله صمیمی من',
        equals(halfSpace('ای دوست سلام من به تو. نمی خواهمت درخت های چنار هاله صمیمی من')),
      );
    });
  });
}
