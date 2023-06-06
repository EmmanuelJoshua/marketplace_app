import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace_app/core/core.dart';
import 'package:marketplace_app/utils/utils.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    required this.currentTab, required this.onSelectTab, super.key,
    this.size = 42,
    this.padding = 10,
  });

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;
  final double size;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 5,
        top: 4,
      ),
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentTab.index,
        onTap: (index) => onSelectTab(TabItem.values[index]),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: black,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 13,
        ),

        // unselectedItemColor: kInactiveColor,
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 13,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              height: size,
              padding: EdgeInsets.only(top: padding, bottom: padding),
              width: size,
              child: const Icon(
                Iconsax.home,
                color: kGreen,
              ),
            ),
            activeIcon: Container(
              height: size,
              padding: EdgeInsets.only(top: padding, bottom: padding),
              width: size,
              child: const Icon(
                Iconsax.home_15,
                color: kGreen,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: size,
              padding: EdgeInsets.only(top: padding, bottom: padding),
              width: size,
              child: const Icon(
                Iconsax.ticket,
                color: kGreen,
                size: 26,
              ),
            ),
            activeIcon: Container(
              height: size,
              padding: const EdgeInsets.only(right: 25, top: 5),
              width: size,
              child: const Icon(
                Iconsax.ticket5,
                color: kGreen,
                size: 26,
              ),
            ),
            label: 'Voucher',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: size,
              padding: EdgeInsets.only(top: padding, bottom: padding),
              width: size,
              child: const Icon(
                Iconsax.wallet_2,
                size: 27,
                color: kGreen,
              ),
            ),
            activeIcon: Container(
              height: size,
              padding: const EdgeInsets.only(left: 26, top: 5),
              width: size,
              child: const Icon(
                Iconsax.wallet_25,
                size: 28,
                color: kGreen,
              ),
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: size,
              padding: EdgeInsets.only(
                top: padding,
              ),
              width: size,
              child: const Icon(
                Iconsax.setting,
                color: kGreen,
              ),
            ),
            activeIcon: Container(
              height: size,
              padding: const EdgeInsets.only(right: 25, top: 5),
              width: size,
              child: const Icon(
                Iconsax.setting5,
                color: kGreen,
              ),
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
