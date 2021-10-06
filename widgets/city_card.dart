import 'package:chashy_app/models/city.dart';
import 'package:chashy_app/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
final City city;

CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
      height: 170,
      width: 135,
      color: Color(0xfff6f7f8),
      child: Column(
        children:[
          Stack(
            children: [
            Image.asset(city.imageUrl,
            width: 135,
              height: 110,
              fit: BoxFit.cover,
            ),
            city.isPopular ?
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Image.asset('assets/images/Icon_star.png',
                  width: 22,
                    height: 22,
                  ),
                ),
              ),
            ) : Container(),
          ],
      ),
          SizedBox(height: 11,),
          Text(city.name, style: blackTextStyle.copyWith(fontSize: 16),
          ),
      ],
      ),
      ),
    );
  }
}
