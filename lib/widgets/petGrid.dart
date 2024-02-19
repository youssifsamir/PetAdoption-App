//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '/providers/dogProvider.dart';

//screens
import '/screens/petScreen.dart';

//widgets
import '/widgets/petCard.dart';

class PetGrid extends StatelessWidget {
  final int selector;
  PetGrid({required this.selector});
  @override
  Widget build(BuildContext context) {
    return Consumer<DogProvider>(
      builder: ((context, provider, _) => GridView.builder(
            padding: const EdgeInsets.only(top: 30, left: 5, right: 5),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 2.3,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            PetScreen.routeName,
                            arguments: selector == 0
                                ? provider.Adopt[index].id
                                : provider.Donate[index].id,
                          );
                        },
                        child: selector == 0
                            ? PetCard(
                                name: provider.Adopt[index].name,
                                image: provider.Adopt[index].image[0],
                                gender: provider.Adopt[index].gender,
                                age: provider.Adopt[index].age,
                              )
                            : PetCard(
                                name: provider.Donate[index].name,
                                image: provider.Donate[index].image[0],
                                gender: provider.Donate[index].gender,
                                age: provider.Donate[index].age,
                              ),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount:
                selector == 0 ? provider.Adopt.length : provider.Donate.length,
          )),
    );
  }
}
