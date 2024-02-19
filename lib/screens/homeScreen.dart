//packages
import 'package:flutter/material.dart';

//screens
import 'dogViewScreen.dart';

//widgets
import '/widgets/textDisplay.dart';
import '/widgets/miniDogsDisplay.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = './homeScreen.dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 0),
        children: [
          SizedBox(
            height: 500,
            child: DogView(),
          ),
          Stack(
            children: <Widget>[
              SizedBox(
                height: 742,
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset(
                    './assets/images/paws.webp',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 60),
                  TextDisplayWidget(
                    text: 'Top Pets For Adoption',
                    selector: 0,
                  ),
                  const SizedBox(height: 15),
                  MiniDogsDisplay(adopt: true),
                  TextDisplayWidget(
                    text: 'Top Pets For Donation',
                    selector: 1,
                  ),
                  const SizedBox(height: 15),
                  MiniDogsDisplay(adopt: false),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
