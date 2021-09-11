
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hangoutapp/app/widgets/button.dart';

import '../test_helper.dart';

void main() {
  group('Button test group', () {

    const String btnTitle = '';

    final CustomButton button = CustomButton(
      key: const Key('test_button_key'),
      buttonTitle: btnTitle,
      disabled: false,
      onPressed: () => print('Test function'),
      style: null,
    );

    final Finder commonButton = find.byKey(const Key('test_button_key'));

    testWidgets('Does button show on the ui', (WidgetTester tester) async {
      await tester.pumpWidget(materialApp(button));
      expect(commonButton, findsOneWidget);
    });

    testWidgets('Is button tappable', (WidgetTester tester) async {
      await tester.pumpWidget(materialApp(button));
      await tester.tap(commonButton);
      await tester.pump();
    });

    testWidgets('Does button has title', (WidgetTester tester) async {
      final Finder titleButton = find.widgetWithText(CustomButton, btnTitle);
      await tester.pumpWidget(materialApp(button));
      await tester.pump();
      expect(titleButton, findsOneWidget);
    });
  });
}
