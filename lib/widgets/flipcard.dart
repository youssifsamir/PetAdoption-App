//packages
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlipcardWidget extends StatelessWidget {
  final String age, weight, owned, gender, located, description, points;
  FlipcardWidget({
    required this.age,
    required this.gender,
    required this.owned,
    required this.weight,
    required this.located,
    required this.description,
    required this.points,
  });

  final List<String> pts = [
    ' +50 pts  ',
    ' +75 pts  ',
    ' +100 pts  ',
    ' +125 pts  ',
    ' +150 pts  ',
    ' +200 pts  ',
    ' +250 pts  ',
  ];

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL,
      front: Stack(
        children: <Widget>[
          Positioned(
            top: 400,
            right: 21,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(60)),
              child: Container(
                color: Colors.white70,
                width: 370,
                height: 470,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(height: 15),
                      Row(
                        children: const <Widget>[
                          SizedBox(width: 170),
                          Text(
                            'Tap for pet description',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          const Text(
                            'Age:   ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                            ),
                          ),
                          Text(age),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          const Text(
                            'Gender:   ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                            ),
                          ),
                          Text(gender),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          const Text(
                            'Weight:   ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                            ),
                          ),
                          Text(weight),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          const Text(
                            'Owned For:   ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                            ),
                          ),
                          Text(owned),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          const Text(
                            'Located At:   ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                            ),
                          ),
                          Text('$located Shelter'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 350,
            right: 20,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              child: FittedBox(
                child: Container(
                  color: Colors.black12,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          points,
                          style: TextStyle(
                              fontSize: 27, color: Colors.orange[500]),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                            './assets/images/pawtokens.png',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      back: Stack(
        children: <Widget>[
          Positioned(
            top: 400,
            left: 21,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.only(topLeft: Radius.circular(60)),
              child: Container(
                color: Colors.white70,
                width: 370,
                height: 470,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 15),
                    Row(
                      children: const <Widget>[
                        SizedBox(width: 40),
                        Text(
                          'Tap for pet details',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        const SizedBox(width: 40),
                        Flexible(
                          child: Text(
                            description,
                            style: const TextStyle(fontSize: 17),
                          ),
                        ),
                        const SizedBox(width: 40),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
