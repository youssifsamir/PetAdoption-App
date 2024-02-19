//packages
import 'package:flutter/material.dart';
//widgets
import '../widgets/petGrid.dart';

class PetsScreen extends StatelessWidget {
  static final routeName = './petsScreen.dart';

  @override
  Widget build(BuildContext context) {
    final int selector = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          selector == 0 ? 'Pet Adoption' : 'Pet Donation',
        ),
        foregroundColor: Colors.black,
      ),
      body: Stack(
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
          PetGrid(
            selector: selector,
          ),
        ],
      ),
    );
  }
}
