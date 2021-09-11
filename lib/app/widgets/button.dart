import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.buttonTitle = '', this.disabled = false, @required this.onPressed, this.style}) : super(key: key);

  final String buttonTitle;
  final bool disabled;
  final Function? onPressed;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : () => onPressed!(),
      style: style,
      child: Text(buttonTitle, textAlign: TextAlign.center),
    );
  }
}
