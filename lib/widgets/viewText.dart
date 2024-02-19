//packages
import 'package:flutter/material.dart';

class ScrollText extends StatelessWidget {
  final String mainText, miniText;
  final int index;
  const ScrollText({
    required this.mainText,
    required this.miniText,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          miniText,
          style: TextStyle(
            color: index == 2 ? Colors.black54 : Colors.white70,
            fontSize: 15,
          ),
        ),
        SizedBox(height: index == 2 ? 10 : 12),
        Text(
          mainText,
          style: TextStyle(
            color: index == 2 ? Colors.black : Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'RaleWay',
          ),
        ),
        SizedBox(
          width: 300,
          child: Divider(
            color: index == 2 ? Colors.black : Colors.white,
            thickness: 1,
          ),
        ),
        SizedBox(
          height: index == 2 ? 3 : 12,
        ),
        Row(
          children: <Widget>[
            Text(
              miniText,
              style: TextStyle(
                color: index == 2 ? Colors.black54 : Colors.white70,
                fontSize: 15,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white70,
            ),
          ],
        ),
      ],
    );
  }
}
