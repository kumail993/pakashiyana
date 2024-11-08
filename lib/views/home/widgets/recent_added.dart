import 'package:pakashiyana/core/theme/ui_helper.dart';
import 'package:pakashiyana/exports.dart';

class RecentAdded extends StatelessWidget {
  const RecentAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recently Addedd',
              style: getMediumStyle(color: kcBlackColor, fontSize: 16)),
          verticalSpace(10),
          ...List.generate(10, (index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: kcWhitecolor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: kcLightGrey,
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: const BoxConstraints(
                      maxHeight: 200,
                      maxWidth: 147,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/placeholder.jpeg',
                      ),
                    ),
                  ),
                  horizontalSpace(10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2 Days Ago',
                                style: getRegularStyle(
                                  color: kcTextGrey,
                                  fontSize: 10,
                                )),
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: kcDarkGreyColor,
                              ),
                              padding: const EdgeInsets.all(5),
                              child: Image.asset('assets/images/heart.png',
                                  width: 15, height: 15),
                            )
                          ],
                        ),
                        Text('PKR: 100,0000',
                            style: getMediumStyle(
                              color: kcBlackColor,
                              fontSize: 16,
                            )),
                        Text('250 Sq. Yd House for rent in karachi',
                            style: getRegularStyle(
                              color: kcTextGrey,
                              fontSize: 12,
                            )),
                        Row(
                          children: [
                            Image.asset(AppIcons.locationIcon,
                                width: 10, height: 10),
                            horizontalSpace(5),
                            Text(
                              'Karachi, Pakistan',
                              style: getRegularStyle(
                                  color: kcTextGrey, fontSize: 10),
                            ),
                          ],
                        ),
                        verticalSpace(10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: kcPrimaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text('View Details',
                              style: getRegularStyle(
                                color: kcWhitecolor,
                                fontSize: 10,
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
