import 'package:pakashiyana/core/theme/ui_helper.dart';
import 'package:pakashiyana/exports.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Color? fillColor;
  final Color? textColor;
  final String labelText;
  final double? borderRadius;
  final String preText;
  final Function() onLocationTap;

  const CustomSearchField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onLocationTap,
    this.fillColor,
    this.textColor,
    this.labelText = 'Search...',
    this.borderRadius,
    this.preText = 'Search',
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: getRegularStyle(
        fontSize: 12,
        color: textColor ?? kcBlackColor,
      ),
      decoration: InputDecoration(
        filled: true,
        prefixText: preText,
        fillColor: fillColor ?? kcLightGrey,
        labelStyle:
            getRegularStyle(fontSize: 14, color: textColor ?? kcTextGrey),
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          borderSide: const BorderSide(color: kcBorderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          borderSide: const BorderSide(color: kcBorderColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          borderSide: const BorderSide(color: kcBorderColor, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          borderSide: const BorderSide(color: kcBorderColor, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          borderSide: const BorderSide(color: kcBorderColor, width: 1),
        ),
        contentPadding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 13,
          bottom: 13,
        ),
        prefixIcon: const Icon(Icons.search, size: 30, color: kcBlackColor),
        suffixIcon: GestureDetector(
          onTap: onLocationTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
                child: VerticalDivider(
                  thickness: 2,
                  width: 2,
                  color: kcVeryLightGrey,
                ),
              ),
              horizontalSpace(5),
              Image.asset(
                AppIcons.locationIcon,
                width: 20,
                height: 20,
              ),
              horizontalSpace(5),
              Text(
                "Location",
                style: getRegularStyle(fontSize: 14, color: kcBlackColor),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
