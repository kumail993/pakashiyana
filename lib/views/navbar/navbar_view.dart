import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/navbar/controller/navbar_controller.dart';

class BottomNavbar extends GetView<NavbarController> {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NavbarController());
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.bottomNavIndex.value,
          children: controller.screens,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: kcPrimaryColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () => AnimatedBottomNavigationBar.builder(
          elevation: 100,
          itemCount: controller.iconList.length,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? kcPrimaryColor : Colors.grey;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(controller.iconList[index],
                    color: color, width: 24, height: 24),
                Text(controller.labels[index],
                    style: getRegularStyle(color: color))
              ],
            );
          },
          activeIndex: controller.bottomNavIndex.value,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.defaultEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) =>
              controller.onTap(index), // Update the selected index
        ),
      ),
    );
  }
}
