//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

//providers
import '/providers/dogProvider.dart';

//widgets
import '../widgets/viewText.dart';

class DogView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DogProvider>(context, listen: false);

    return CarouselSlider(
      items: provider.Images.map((page) {
        return Stack(children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 500,
            child: Image.asset(
              page,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 15,
            bottom: 20,
            child: ScrollText(
              mainText: provider.MainText[provider.Images.indexOf(page)],
              miniText: provider.MiniText[provider.Images.indexOf(page)],
              index: provider.Images.indexOf(page),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 20,
            child: DotsIndicator(
              dotsCount: provider.Images.length,
              position: provider.Images.indexOf(page).toDouble(),
              decorator: const DotsDecorator(
                color: Colors.grey,
                activeColor: Colors.white,
              ),
            ),
          ),
        ]);
      }).toList(),
      options: CarouselOptions(
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(seconds: 2),
        autoPlay: true,
        height: double.infinity,
        viewportFraction: 1,
        enableInfiniteScroll: true,
      ),
    );
  }
}
