//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '/providers/accounts.dart';
import '/providers/cartProvider.dart';
import '/providers/bottombarProvider.dart';

//screens
import 'mapScreen.dart';
import 'homeScreen.dart';
import 'prizeScreen.dart';
import 'marketScreen.dart';

//widgets
import '/widgets/badge.dart';
import '/widgets/drawer.dart';
import '/widgets/bottomBar.dart';

class TabScreen extends StatelessWidget {
  static final routeName = "./tabScreen.dart";

  final List<dynamic> body = [
    HomeScreen(),
    MarketScreen(),
    const MapScreen(),
    PrizeScreen(),
  ];

  final List<String> titles = [
    '',
    'Paw Market',
    '',
    'Paw Prize',
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomBarProvider>(context);
    final username = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: provider.getCurrentIndex == 1
          ? AppBar(
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Consumer<CartProvider>(
                    builder: (context, value, _) => Badges(
                      color: Colors.amber,
                      value: value.cartTotalItems,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                )
              ],
              backgroundColor: Colors.white,
              title: Consumer<BottomBarProvider>(
                builder: (context, screen, _) => Text(
                  titles[screen.index],
                ),
              ),
              // elevation: 0,
              foregroundColor: Colors.black,
            )
          : provider.getCurrentIndex == 0 || provider.getCurrentIndex == 2
              ? AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  title: Consumer<BottomBarProvider>(
                    builder: (context, screen, _) => Text(
                      titles[screen.index],
                    ),
                  ),
                  foregroundColor: Colors.black,
                )
              : AppBar(
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Consumer<AccountsProvider>(
                        builder: (context, account, _) => Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                './assets/images/pawpts.png',
                              ),
                            ),
                            Positioned(
                              bottom: 17,
                              right: 27,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '${account.getByUsername(username).points}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                      './assets/images/pawtokens.png',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                  backgroundColor: Colors.white,
                  title: Consumer<BottomBarProvider>(
                    builder: (context, screen, _) => Text(
                      titles[screen.index],
                    ),
                  ),
                  foregroundColor: Colors.black,
                ),
      drawer: MainDrawer(username: username),
      extendBodyBehindAppBar: true,
      body: Consumer<BottomBarProvider>(
        builder: (context, screen, _) => body[screen.index],
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
