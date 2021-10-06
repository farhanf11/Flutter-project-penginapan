import 'package:chashy_app/pages/eror_page.dart';
import 'package:chashy_app/theme.dart';
import 'package:chashy_app/widgets/facility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'explore_page.dart';

class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async{
      if(await canLaunch(url)){
        launch(url);
      }else{
        // throw(url);
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => ErrorPage(),
          ),
        );
      }
    }
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('assets/images/pic.png',
            width: MediaQuery.of(context).size.width,
            height: 350,
              fit: BoxFit.cover,
            ),

            ListView(
              children: [
                SizedBox(height: 328,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: edge
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Villa Farhan',
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  ),
                                ),
                                SizedBox(height: 2,),
                                Text.rich(
                                  TextSpan(
                                    text: '\IDR 300000',

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
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/images/Icon_star.png',
                                width: 20,
                                ),
                                SizedBox(width: 2,),
                                Image.asset('assets/images/Icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(width: 2,),
                                Image.asset('assets/images/Icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(width: 2,),
                                Image.asset('assets/images/Icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(width: 2,),
                                Image.asset('assets/images/Icon_star.png',
                                  width: 20,
                                  color: greyColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // NOTE : FACILITIES
                      SizedBox(height: 30,),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text('Fasilitas Tersedia',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 12,),
                      Padding(padding: EdgeInsets.symmetric(
                          horizontal: edge,
                          ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Facility(
                              name: ' Dapur',
                              jumlah: 1,
                              imageUrl: 'assets/images/kitchen.png',
                            ),
                            Facility(
                              name: ' Kamar Tidur',
                              jumlah: 4,
                              imageUrl: 'assets/images/bed.png',
                            ),
                            Facility(
                              name: ' Lemari',
                              jumlah: 3,
                              imageUrl: 'assets/images/lemari.png',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text('Photos',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: edge,),
                            Image.asset('assets/images/foto1.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 18,),
                            Image.asset('assets/images/foto2.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 18,),
                            Image.asset('assets/images/foto3.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 18,),
                            Image.asset('assets/images/pict4.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 18,),
                            Image.asset('assets/images/pict5.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text('Location',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 4,),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: edge,
                            vertical: 30,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: edge),
                                child: Text(
                                  'Jl. Doang Jadian Kaga no.15 \n'
                                      'Bogor, Jawa Barat',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){ 
                                  launchUrl('https://goo.gl/maps/SoCPnLQdUmwmiNV16');
                                },
                                child: Image.asset('assets/images/map.png',
                                  width: 45,
                                ),
                              ),
                            ],
                          ),
                        ),
                      SizedBox(height: 40,),
                      Container(
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        height: 50,
                        margin: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: RaisedButton(
                          onPressed: (){
                            launchUrl('https://wa.me/89643410793');
                          },
                          color: purpleColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Text('Booking Villa',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){ Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExplorePage(),
                      ),
                    );
                    },
                    child: Image.asset('assets/images/back.png',
                      width: 45,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/images/wishlist.png',
                      width: 40,
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
