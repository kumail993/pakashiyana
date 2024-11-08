import 'package:pakashiyana/core/theme/ui_helper.dart';
import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/home/controller/home_controller.dart';
import 'package:pakashiyana/views/home/widgets/home_label.dart';
import 'package:pakashiyana/views/home/widgets/property_filters.dart';
import 'package:pakashiyana/views/home/widgets/property_type_tab.dart';
import 'package:pakashiyana/views/home/widgets/recent_added.dart';
import 'package:pakashiyana/views/home/widgets/search.dart';
import 'package:pakashiyana/views/home/widgets/top_picks.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeLabel(),
        verticalSpace(17),
        const PropertyTypetab(),
        verticalSpace(13),
        const Search(),
        verticalSpace(13),
        const PropertyFilters(),
        verticalSpace(20),
        const TopPicks(),
        verticalSpace(13),
        const RecentAdded(),
      ],
    )));
  }
}
