//packages
import 'package:flutter/material.dart';

class PetCard extends StatefulWidget {
  final String name, image, gender, age;
  PetCard({
    required this.name,
    required this.gender,
    required this.age,
    required this.image,
  });

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: SizedBox(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black87,
                      Colors.black54,
                      Colors.black12,
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '   ${widget.name}  ${widget.gender.substring(widget.gender.length - 1)}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '     ${widget.age}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
