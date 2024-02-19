//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '/providers/bottombarProvider.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomBarProvider>(context);
    int currentIndex = provider.getCurrentIndex;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.white,
      // showSelectedLabels: false,
      // showUnselectedLabels: false,
      elevation: 0,
      onTap: (index) => provider.updateBody(index),
      items: [
        BottomNavigationBarItem(
          icon: currentIndex == 0
              ? const ImageIcon(
                  AssetImage('./assets/icons/dogo.png'),
                  size: 35,
                  color: Colors.amber,
                )
              : const ImageIcon(
                  AssetImage('./assets/icons/dogo.png'),
                  size: 35,
                  color: Colors.black,
                ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 1
              ? const ImageIcon(
                  AssetImage('./assets/icons/peto.png'),
                  size: 35,
                  color: Colors.amber,
                )
              : const ImageIcon(
                  AssetImage('./assets/icons/peto.png'),
                  size: 35,
                  color: Colors.black,
                ),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 2
              ? const ImageIcon(
                  AssetImage('./assets/icons/loca.png'),
                  size: 35,
                  color: Colors.amber,
                )
              : const ImageIcon(
                  AssetImage('./assets/icons/loca.png'),
                  size: 35,
                  color: Colors.black,
                ),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 3
              ? const ImageIcon(
                  AssetImage('./assets/icons/trofo.png'),
                  size: 35,
                  color: Colors.amber,
                )
              : const ImageIcon(
                  AssetImage('./assets/icons/trofo.png'),
                  size: 35,
                  color: Colors.black,
                ),
          label: 'Prizes',
        ),
      ],
    );
  }
}
