//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '/providers/dogProvider.dart';

//widgets
import '/widgets/petImages.dart';
import '/widgets/flipcard.dart';

class PetScreen extends StatelessWidget {
  static final routeName = './petScreen.dart';

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)?.settings.arguments as String;
    final provider = Provider.of<DogProvider>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title:
            Text(provider.Pets.firstWhere((element) => element.id == id).name),
      ),
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: double.infinity,
            child: Opacity(
              opacity: 1,
              child: Image.asset(
                './assets/images/paws.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 400,
            height: 500,
            child: PetImages(
              images:
                  provider.Pets.firstWhere((element) => element.id == id).image,
            ),
          ),
          Positioned(
            child: FlipcardWidget(
              age: provider.Pets.firstWhere((element) => element.id == id).age,
              gender: provider.Pets.firstWhere((element) => element.id == id)
                  .gender,
              located: provider.Pets.firstWhere((element) => element.id == id)
                  .location,
              owned:
                  provider.Pets.firstWhere((element) => element.id == id).owend,
              weight: provider.Pets.firstWhere((element) => element.id == id)
                  .weight,
              description:
                  provider.Pets.firstWhere((element) => element.id == id)
                      .description,
              points: provider.Pets.firstWhere((element) => element.id == id)
                  .points,
            ),
          ),
          Positioned(
            top: 715,
            right: 150,
            child: Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black12,
                backgroundImage: AssetImage(
                  provider.Pets.firstWhere((element) => element.id == id)
                          .isAdopt
                      ? './assets/images/adopt.png'
                      : './assets/images/ate.jpeg',
                ),
              ),
            ),
          ),
          Positioned(
            top: 780,
            right: 172,
            child: Center(
              child: Text(
                provider.Pets.firstWhere((element) => element.id == id).isAdopt
                    ? 'ADOPT'
                    : '',
                style: TextStyle(
                  fontFamily: 'RaleWay',
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[400],
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
