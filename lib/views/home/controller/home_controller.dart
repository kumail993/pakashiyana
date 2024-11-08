import 'package:carousel_slider/carousel_controller.dart';
import 'package:pakashiyana/exports.dart';

class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();
  CarouselSliderController carouselController = CarouselSliderController();
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set setCurrentIndex(int index) {
    _currentIndex = index;
    update();
  }

  String _selectedTab = 'Buy';
  String _selectedFilter = 'House';

  String get selectedFilter => _selectedFilter;

  set setSelectFilter(String filter) {
    _selectedFilter = filter;
    update();
  }

  List<PropertFilter> propertFilter = [
    PropertFilter('House', 'assets/images/house_icon.png'),
    PropertFilter('Appartment', 'assets/images/appartment_icon.png'),
    PropertFilter('Shops', 'assets/images/shop_icon.png'),
    PropertFilter('Plaza', 'assets/images/plaza_icon.png'),
    PropertFilter('Land', 'assets/images/land_icon.png'),
    PropertFilter('Plots', 'assets/images/plot_icon.png'),
  ];

  String get selectedTab => _selectedTab;

  set setSelectTab(String tab) {
    _selectedTab = tab;
    update();
  }

  void setSelectedTab(String tab) {
    setSelectTab = tab;
  }

  void selectFilter(String filterName) {
    setSelectFilter = filterName;
  }
}

class PropertFilter {
  String name;
  String icon;
  PropertFilter(this.name, this.icon);
}
