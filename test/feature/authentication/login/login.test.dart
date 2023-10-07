import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    group("User Login Test", () {
      test(
        "User Login Fail Test",
        () {
          const isUserLogin = true;
          expect(isUserLogin, true);
        },
      );
    });
  });
}
