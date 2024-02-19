//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '/providers/accounts.dart';
import '/providers/cartProvider.dart';
import '/providers/bottombarProvider.dart';

//screens
import '/screens/qrScanner.dart';

class MainDrawer extends StatelessWidget {
  final String username;

  MainDrawer({required this.username});

  Widget buildListTile(
      String title, IconData icon, BuildContext ctx, VoidCallback tapHandler) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListTile(
        leading: Icon(
          icon,
          size: 40,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: Theme.of(ctx).textTheme.labelSmall,
        ),
        onTap: tapHandler,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final account = Provider.of<AccountsProvider>(context);
    final cart = Provider.of<CartProvider>(context);
    final screen = Provider.of<BottomBarProvider>(context);
    return Drawer(
      backgroundColor: Colors.black,
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: double.infinity,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                './assets/images/paws.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              const SizedBox(height: 100),
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Container(
                      height: 250,
                      width: 250,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 25,
                    right: 25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(),
                        child: SizedBox(
                          child: Image.asset(
                            account.getByUsername(username).avatar,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 100,
                  height: 50,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      username,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              buildListTile(
                'Account',
                Icons.account_circle,
                context,
                () {},
              ),
              buildListTile(
                'Settings',
                Icons.settings,
                context,
                () {},
              ),
              buildListTile(
                'Language',
                Icons.language,
                context,
                () {
                  Positioned(
                    top: 25,
                    right: 25,
                    child: PopupMenuButton(
                      offset: const Offset(0, -355),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.black87,
                      icon: const Icon(
                        Icons.arrow_drop_up,
                        size: 32,
                        color: Colors.white,
                      ),
                      itemBuilder: (_) => [
                        PopupMenuItem(
                          onTap: () {},
                          height: 55,
                          child: Center(
                            child: Text('Behlül needs a warm home',
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                          ),
                        ),
                        PopupMenuItem(
                          height: 55,
                          child: Center(
                            child: Text('Osman needs a dog wheelchair',
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              buildListTile(
                'QR Scanner',
                Icons.qr_code,
                context,
                () {
                  Navigator.of(context).pushNamed(QRscanner.routeName);
                },
              ),
              const SizedBox(height: 50),
              buildListTile(
                'Logout',
                Icons.logout,
                context,
                () {
                  screen.resetIndex();
                  cart.deleteAll();
                  Navigator.of(context).pop();
                  Navigator.of(context).popAndPushNamed('/');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
