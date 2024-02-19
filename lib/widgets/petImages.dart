//packages
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//providers
import '../providers/dogProvider.dart';

class PetImages extends StatefulWidget {
  final List<String> images;
  PetImages({required this.images});

  @override
  State<PetImages> createState() => _PetImagesState();
}

class _PetImagesState extends State<PetImages> {
  var i = 1;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: widget.images.map((img) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      }).toList(),
      options: CarouselOptions(
        enableInfiniteScroll: false,
        initialPage: 1,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          setState(() {
            i = index;
          });
        },
      ),
    );
  }
}
