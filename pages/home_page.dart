import 'package:chashy_app/pages/explore_page.dart';
import 'package:chashy_app/theme.dart';
import 'package:flutter/material.dart';

// stl => class statelessWidget
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(alignment: Alignment.bottomCenter,
            child: Image.asset('assets/images/bottom.png'),
            ),
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text('Temukan Villa terbaik\nto Stay and Happy',
                      style: blackTextStyle.copyWith(
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Villa Daerah Cisarua Puncak\ndengan Lingkungan Nyaman & Bersih',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      width: 210,
                      height: 50,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => ExplorePage(),
                          ),
                          );
                        },
                        color: purpleColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Text('Explore Now',
                          style: whiteTextStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}