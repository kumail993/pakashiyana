import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/home/controller/home_controller.dart';
import 'package:pakashiyana/widgets/selector_tab.dart';

class PropertyTypetab extends GetView<HomeController> {
  const PropertyTypetab({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TabSelector(
          firstTabText: 'Buy',
          secondTabText: 'Rent',
          selectedTab: controller.selectedTab,
          onTabSelected: (tab) {
            controller.setSelectedTab(tab);
          },
        ),
      ),
    );
  }
}
