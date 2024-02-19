//packages
import 'package:flutter/material.dart';

//screens
import '/screens/petsScreen.dart';

class TextDisplayWidget extends StatelessWidget {
  final String text;
  final int selector;
  TextDisplayWidget({required this.text, required this.selector});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          InkWell(
            splashColor: const Color.fromARGB(20, 0, 0, 0),
            // onTap: () {
            //   selector == 0
            //       ? Navigator.of(context).pushNamed(
            //           AdoptionScreen.routeName,
            //         )
            //       : Navigator.of(context).pushNamed(
            //           DonationScreen.routeName,
            //         );
            // },
            onTap: () => Navigator.of(context).pushNamed(
              PetsScreen.routeName,
              arguments: selector,
            ),
            child: Text(
              'View All',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ],
      ),
    );
  }
}
