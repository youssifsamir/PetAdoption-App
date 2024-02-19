//packages
import 'package:flutter/material.dart';
import 'package:pet_app/screens/petScreen.dart';
import 'package:provider/provider.dart';

//providers
import '/providers/dogProvider.dart';

class MiniDogsDisplay extends StatelessWidget {
  final bool adopt;
  MiniDogsDisplay({required this.adopt});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      height: 280,
      child: Consumer<DogProvider>(
        builder: (ctx, provider, _) => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return provider.Pets[index].top &&
                    provider.Pets[index].isAdopt == adopt
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: SizedBox(
                            width: 170,
                            height: 190,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  PetScreen.routeName,
                                  arguments: provider.Pets[index].id,
                                );
                              },
                              child: Image.asset(
                                provider.Pets[index].image[0],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              width: 100,
                              margin: const EdgeInsets.only(top: 10),
                              child: Image.asset('./assets/images/bone.png'),
                            ),
                            Positioned(
                              top: 19,
                              child: SizedBox(
                                width: 100,
                                child: Center(
                                  child: Text(
                                    provider.Pets[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Container();
          }),
          itemCount: provider.Pets.length,
        ),
      ),
    );
  }
}
