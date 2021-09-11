import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hangoutapp/app/view/welcome/welcome_page.dart';

import '../test_helper.dart';

void main() {

  final Widget welcomePageTest = WelcomePage();

  final Finder welcomeBodyWidget = find.byKey(const Key('welcome_page_body_key'));
  final Finder welcomeMainImageWidget = find.byKey(const Key('welcome_page_main_image_key'));
  final Finder welcomeButtonsWidget = find.byKey(const Key('welcome_page_buttons_key'));

  testWidgets('Does body widget show on the welcome page', (WidgetTester tester) async {
    await tester.pumpWidget(materialApp(welcomePageTest));
    await tester.pump();
    expect(welcomeBodyWidget, findsOneWidget);
  });

  testWidgets('Does welcomeMainImageWidget show on the welcome page', (WidgetTester tester) async {
    await tester.pumpWidget(materialApp(welcomePageTest));
    await tester.pump();
    expect(welcomeMainImageWidget, findsOneWidget);
  });

  testWidgets('Does welcomeButtonsWidget show on the welcome page', (WidgetTester tester) async {
    await tester.pumpWidget(materialApp(welcomePageTest));
    await tester.pump();
    expect(welcomeButtonsWidget, findsOneWidget);
  });

}
