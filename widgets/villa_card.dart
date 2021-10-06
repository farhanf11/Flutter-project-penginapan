import 'package:chashy_app/models/villa.dart';
import 'package:chashy_app/pages/detail_page.dart';
import 'package:chashy_app/theme.dart';
import 'package:flutter/material.dart';

class VillaCard extends StatelessWidget {
  late final Villa villa;

  VillaCard(this.villa);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){ Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(),
        ),
      );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(villa.imageUrl,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/Icon_star.png',
                            width: 20,
                            height:20,
                          ),
                          Text('${villa.rating}/5',
                            style: whiteTextStyle.copyWith(),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(villa.name,
                textAlign: TextAlign.left,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 2,),
              Text.rich(
                TextSpan(
                  text: '\IDR ${villa.price}',

                  style: purpleTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: '/ Night',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Text('${villa.place}, ${villa.city}',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
