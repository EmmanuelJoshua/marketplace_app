import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:marketplace_app/core/core.dart';
import 'package:marketplace_app/views/screens/home/home.dart';
import 'package:marketplace_app/views/screens/settings/settings.dart';
import 'package:marketplace_app/views/screens/voucher/voucher.dart';
import 'package:marketplace_app/views/screens/wallet/wallet.dart';
import 'package:marketplace_app/views/shared_widgets/bottom_nav.dart';

class Dashboard extends HookWidget {
  Dashboard({super.key});

  final SharedAxisTransitionType _transitionType =
      SharedAxisTransitionType.vertical;

  final Map<TabItem, Widget> pageList = {
    TabItem.home: Home(),
    TabItem.voucher: const Voucher(),
    TabItem.wallet: const Wallet(),
    TabItem.settings: const Settings(),
  };

  @override
  Widget build(BuildContext context) {
    final tabItem = useState(TabItem.home);
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (
          Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) =>
            SharedAxisTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          transitionType: _transitionType,
          child: child,
        ),
        child: pageList[tabItem.value],
      ),
      bottomNavigationBar: BottomNavigation(
        currentTab: tabItem.value,
        size: 33,
        padding: 5,
        onSelectTab: (item) {
          tabItem.value = item;
        },
      ),
    );
  }
}
