//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '/providers/marketProvider.dart';

//widgets
import '/widgets/marketCard.dart';

class MarketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: 742,
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(
              './assets/images/paws.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Consumer<MarketProvider>(
            builder: ((context, provider, _) => ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: MarketCard(
                      name: provider.Products[index].name,
                      price: provider.Products[index].price,
                      image: provider.Products[index].image,
                      description: provider.Products[index].description,
                      index: index,
                      id: provider.Products[index].id,
                    ),
                  );
                },
                itemCount: provider.Products.length)),
          ),
        ),
      ],
    );
  }
}
