import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/blacklist/blacklist_view.dart';
import 'package:pakashiyana/views/favourites/favourites_view.dart';
import 'package:pakashiyana/views/home/home_view.dart';
import 'package:pakashiyana/views/my_ads/my_add_view.dart';

class NavbarController extends GetxController {
  var bottomNavIndex = 0.obs;

  final RxList<Widget> screens =
      const [HomeView(), FavouritesView(), MyAdsView(), BlacklistView()].obs;

  final iconList = [
    'assets/images/Home.png',
    'assets/images/favourites.png',
    'assets/images/ads.png',
    'assets/images/blacklist.png'
  ];

  final labels = ['Home', 'Favourites', 'My Ads', 'Blacklist'];

  void onTap(int index) {
    bottomNavIndex.value = index;
  }
}
