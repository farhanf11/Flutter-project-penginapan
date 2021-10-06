import 'package:flutter/material.dart';

import '../theme.dart';
class Facility extends StatelessWidget {
    final String name;
    final String imageUrl;
    final int jumlah;

    Facility({required this.name, required this.imageUrl, required this.jumlah});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageUrl,
        width: 32,
        ),
        SizedBox(height: 2,),
        Text.rich(
          TextSpan(
            text: '$jumlah',
            style: purpleTextStyle.copyWith(
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: ' $name',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
