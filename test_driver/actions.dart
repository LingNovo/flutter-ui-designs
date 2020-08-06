import 'package:flutter_driver/flutter_driver.dart';

abstract class TestActions {
  static FlutterDriver driver;

  static Future<void> tap(String key) async {
    await driver.tap(find.byValueKey(key));
  }

  static Future<void> scrollUntil({
    String scroller,
    String item,
    double x,
    double y,
  }) async {
    await driver.scrollUntilVisible(
      find.byValueKey(scroller),
      find.byValueKey(item),
      dxScroll: x,
      dyScroll: y,
      timeout: Duration(seconds: 30),
    );
  }

  static Future<void> scroll({
    String scroller,
    double x = 0.0,
    double y = 0.0,
    int duration = 400,
  }) async {
    await driver.scroll(
      find.byValueKey(scroller),
      x,
      y,
      Duration(milliseconds: duration),
    );
  }

  static Future<void> delay([int milliseconds = 1000]) async {
    await Future.delayed(Duration(milliseconds: milliseconds));
  }
}
