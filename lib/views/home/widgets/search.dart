import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/home/controller/home_controller.dart';
import 'package:pakashiyana/widgets/search_field.dart';

class Search extends GetView<HomeController> {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomSearchField(
          controller: controller.searchController,
          hintText: 'Search',
          onLocationTap: () {}),
    );
  }
}
