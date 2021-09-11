

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hangoutapp/app/providers/splash_provider.dart';
import 'package:hangoutapp/app/view/splash/splash_page.dart';
import 'package:provider/provider.dart';

import '../test_helper.dart';

void main() {

    final Widget splashPageTest = Provider(create: (BuildContext context) => SplashProvider(), child: SplashPage());

    final Finder splashBodyWidget = find.byKey(const Key('splash_body_key'));

    testWidgets('Does body widget show on the splash page', (WidgetTester tester) async {
       await tester.pumpWidget(materialApp(splashPageTest));
       await tester.pump();
       expect(splashBodyWidget, findsOneWidget);
    });

}
