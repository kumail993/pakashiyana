import 'package:pakashiyana/exports.dart';

class HomeLabel extends StatelessWidget {
  const HomeLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.homeLabel,
            style: getMediumStyle(color: kcBlackColor, fontSize: 20),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: kcDarkGreyColor, borderRadius: BorderRadius.circular(8)),
            child: Image.asset(AppIcons.userIcon, width: 20, height: 20),
          )
        ],
      ),
    );
  }
}
