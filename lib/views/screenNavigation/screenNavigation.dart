import 'package:flutter/material.dart';
import 'package:swiggy/views/homeScreen/homescreen.dart';

import '../../utils/app_colors.dart';
import '../accountScreen/account_screen.dart';
import '../cartScreen/cart_screen.dart';
import '../searchScreen/search_screen.dart';


class ScreenNavigator extends StatefulWidget {
  const ScreenNavigator({super.key});

  @override
  State<ScreenNavigator> createState() => _ScreenNavigatorState();
}

class _ScreenNavigatorState
    extends State<ScreenNavigator> {
  final List<Widget> children = [
    const HomeScreen(),
    const SearchScreen(),
    const CartScreen(),
    AccountScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final labelTextStyle =
    Theme
        .of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontSize: 8.0);

    return Scaffold(
      body: children[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 50.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: darkOrange,
          unselectedItemColor: Colors.grey,
          currentIndex: selectedIndex,
          selectedLabelStyle: labelTextStyle,
          unselectedLabelStyle: labelTextStyle,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'SEARCH',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'CART',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'ACCOUNT',
            ),
          ],
        ),
      ),
    );
  }
}
