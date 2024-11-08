import 'package:pakashiyana/core/theme/ui_helper.dart';
import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/home/controller/home_controller.dart';

class PropertyFilters extends GetView<HomeController> {
  const PropertyFilters({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kcPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Browse Properties',
              style: getMediumStyle(color: kcWhitecolor, fontSize: 16),
            ),
            verticalSpace(10),
            GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) {
                return Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 5,
                  runSpacing: 10,
                  children: [
                    ...controller.propertFilter.map(
                      (e) {
                        final bool isSelected =
                            controller.selectedFilter == e.name;
                        return GestureDetector(
                          onTap: () => controller.selectFilter(e.name),
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: AppSizing.width(context) * 0.26,
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                            decoration: BoxDecoration(
                              color:
                                  isSelected ? kcSecondaryColor : kcWhitecolor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(e.icon,
                                    width: 20,
                                    height: 20,
                                    color: isSelected
                                        ? kcWhitecolor
                                        : kcBlackColor),
                                horizontalSpace(2),
                                Text(
                                  e.name,
                                  style: getRegularStyle(
                                    fontSize: 12,
                                    color: isSelected
                                        ? kcWhitecolor
                                        : kcBlackColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
