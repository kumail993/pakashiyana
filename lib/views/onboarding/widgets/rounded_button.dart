import 'package:pakashiyana/exports.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double borderRadius;
  final VoidCallback onPressed;
  final EdgeInsets padding;
  final double fontSize;
  final FontWeight fontWeight;

  const RoundedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
    this.backgroundColor = kcPrimaryColor,
    this.borderRadius = 30.0,
    this.padding = const EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0),
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: padding,
      ),
      onPressed: onPressed,
      child: Text(text,
          style: getMediumStyle(
            color: textColor,
            fontSize: 16,
          )),
    );
  }
}
