import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:pakashiyana/core/theme/ui_helper.dart';
import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/home/controller/home_controller.dart';

class TopPicks extends GetView<HomeController> {
  const TopPicks({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Text('Top Picks',
              style: getMediumStyle(color: kcBlackColor, fontSize: 16)),
        ),
        verticalSpace(10),
        CarouselSlider.builder(
          carouselController: controller.carouselController,
          itemCount: 10,
          itemBuilder: (context, index, realIndex) {
            return Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: kcDarkGreyColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/placeholder.jpeg',
                  ),
                ),
                verticalSpace(10),
                Text(
                  '250 Sq.yd house for rent in karachi',
                  style: getRegularBoldStyle(color: kcBlackColor, fontSize: 14),
                ),
                verticalSpace(2),
                Row(
                  children: [
                    Image.asset(AppIcons.locationIcon, width: 10, height: 10),
                    horizontalSpace(5),
                    Text(
                      'Karachi, Pakistan',
                      style: getRegularStyle(color: kcTextGrey, fontSize: 10),
                    )
                  ],
                )
              ]),
            );
          },
          options: CarouselOptions(
              aspectRatio: 1.9,
              viewportFraction: 0.5,
              scrollDirection: Axis.horizontal,
              enableInfiniteScroll: false,
              padEnds: false,
              onPageChanged: (index, reason) {
                controller.setCurrentIndex = index;
              }),
        ),
        verticalSpace(10),
        Center(
          child: DotsIndicator(
            decorator: const DotsDecorator(
              color: kcDarkGreyColor,
              activeColor: kcPrimaryColor,
            ),
            dotsCount: 10,
            position: controller.currentIndex,
          ),
        ),
        // SmoothPageIndicator(
        //     controller: controller.carouselController,
        //     count: 6,
        //     effect: WormEffect(),
        //     onDotClicked: (index) {})
      ],
    );
  }
}
