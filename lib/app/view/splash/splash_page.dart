import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hangoutapp/theme/color_helper.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SafeArea(
    child: Container(
      key: const Key('splash_body_key'),
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Container(
        color: Colors.white,
        child: Center(child: SpinKitCircle(size: 80.0, color: ColorHelper.gray.color)),
      ),
    ),
  );
}
