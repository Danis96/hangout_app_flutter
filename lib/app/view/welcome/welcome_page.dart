import 'package:flutter/material.dart';
import 'package:hangoutapp/app/widgets/button.dart';
import 'package:hangoutapp/theme/color_helper.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildButtons(),
    );
  }
}

Widget _buildBody() {
  return Column(key: const Key('welcome_page_body_key'), children: <Widget>[Expanded(child: _buildMainImageHeader())]);
}

Widget _buildMainImageHeader() {
  return Container(key: const Key('welcome_page_main_image_key'), child: Image.asset('assets/welcome_main_image.png'));
}

Widget _buildButtons() {
  return Container(
    height: 200,
    key: const Key('welcome_page_buttons_key'),
    child: Column(
      children: <Widget>[
        _loginButton(),
        const SizedBox(height: 20),
        _registerButton(),
      ],
    ),
  );
}

CustomButton _loginButton() {
  return CustomButton(
    key: const Key('welcome_login_button_key'),
    onPressed: () {},
    buttonTitle: 'Login',
  );
}

CustomButton _registerButton() {
  return CustomButton(
    key: const Key('welcome_register_button_key'),
    onPressed: () {},
    buttonTitle: 'Register',
  );
}

final ButtonStyle _buttonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(ColorHelper.red.color),
  side: MaterialStateProperty.all(BorderSide(color: ColorHelper.black.color)),
  foregroundColor: MaterialStateProperty.all(ColorHelper.black.color),
);
