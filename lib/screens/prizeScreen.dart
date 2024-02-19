//packages
import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

//providers
import '/providers/accounts.dart';

//screens
import '/screens/adScreen.dart';

class PrizeScreen extends StatefulWidget {
  @override
  State<PrizeScreen> createState() => _PrizeScreenState();
}

class _PrizeScreenState extends State<PrizeScreen> {
  bool _visible = false, _visible2 = false;
  int rand = 0;
  final List<String> _prizes = [
    'Glass Bottle',
    'Paw Pillow',
    'Getir 15% Voucher Coupon',
    'Mobile Cover',
    'Trendyol 20% Voucher Coupon',
    'Christmas Jar',
  ];

  StreamController<int> controller = StreamController<int>();

  void _displayPrize() {
    setState(() {
      _visible = false;
    });
  }

  void _closePrize() {
    setState(() {
      _visible = true;
    });
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)?.settings.arguments as String;
    final account = Provider.of<AccountsProvider>(context);
    return Stack(
      children: <Widget>[
        SizedBox(
          height: double.infinity,
          child: Opacity(
            opacity: 0.3,
            child: Image.asset(
              './assets/images/paws.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 40,
          top: 120,
          child: SizedBox(
            width: 300,
            child: Image.asset(
              './assets/images/spin&win.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 40,
          top: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              color: Colors.deepOrange[100],
              child: Row(
                children: const <Widget>[
                  Center(
                    child: Text(
                      '1 spin = 250',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20),
                    ),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      './assets/images/pawtokens.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 350,
          left: -100,
          child: Center(
            child: SizedBox(
              height: 650,
              width: 600,
              child: FortuneWheel(
                onAnimationStart: _displayPrize,
                onAnimationEnd: _closePrize,
                animateFirst: false,
                selected: controller.stream,
                indicators: const <FortuneIndicator>[
                  FortuneIndicator(
                    alignment: Alignment.topCenter,
                    child: TriangleIndicator(
                      color: Colors.black,
                    ),
                  ),
                ],
                items: [
                  FortuneItem(
                    child: SizedBox(
                      height: 50,
                      width: 150,
                      child: Image.asset(
                        './assets/images/np1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    style: const FortuneItemStyle(
                      color: Colors.amber,
                      borderColor: Colors.white,
                      borderWidth: 10,
                    ),
                  ),
                  FortuneItem(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        './assets/images/np3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Colors.pink[400] as Color,
                      borderColor: Colors.white,
                      borderWidth: 10,
                    ),
                  ),
                  FortuneItem(
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        './assets/images/vouch.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Colors.deepOrange[400] as Color,
                      borderColor: Colors.white,
                      borderWidth: 10,
                    ),
                  ),
                  FortuneItem(
                    child: SizedBox(
                      width: 130,
                      height: 130,
                      child: Image.asset(
                        './assets/images/np4.png',
                      ),
                    ),
                    style: const FortuneItemStyle(
                      color: Colors.amber,
                      borderColor: Colors.white,
                      borderWidth: 10,
                    ),
                  ),
                  FortuneItem(
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        './assets/images/vouch2.jpeg',
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Colors.pink[400] as Color,
                      borderColor: Colors.white,
                      borderWidth: 10,
                    ),
                  ),
                  FortuneItem(
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        './assets/images/np2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Colors.deepOrange[400] as Color,
                      borderColor: Colors.white,
                      borderWidth: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 630,
          right: 140,
          child: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (account.getByUsername(username).points >= 250) {
                    _visible2 = false;
                    account.alterPoints(
                      username,
                      account.getByUsername(username).points - 250,
                    );
                    rand = Random().nextInt(5);
                    controller.add(rand);
                  } else {
                    _visible = false;
                    _visible2 = true;
                  }
                });
              },
              child: const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('./assets/images/tap2.gif'),
              ),
            ),
          ),
        ),
        Visibility(
          visible: _visible,
          replacement: Container(),
          child: Positioned(
            child: Center(
              child: Container(
                padding: const EdgeInsets.only(left: 25),
                height: 150,
                width: 500,
                child: Text(
                  'Congratulations You Won A ${_prizes[rand]} !\nCheck your won prizes to redeem them.',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: _visible,
          replacement: Container(),
          child: Positioned(
            top: 100,
            child: Center(
              child: SizedBox(
                height: 500,
                width: 500,
                child: SizedBox(
                  child: Image.asset('./assets/images/stars.gif'),
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: _visible2,
          replacement: Container(),
          child: Positioned(
            bottom: 350,
            left: 50,
            child: Center(
              child: Container(
                height: 200,
                width: 300,
                color: Colors.transparent,
                child: const Center(
                  child: Text(
                    "You don't have enough Paw Points!\n Adopt or Donate to collect more!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        VidAd(),
      ],
    );
  }
}
