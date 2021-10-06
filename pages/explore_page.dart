import 'package:chashy_app/models/city.dart';
import 'package:chashy_app/models/tips.dart';
import 'package:chashy_app/models/villa.dart';
import 'package:chashy_app/providers/villa_provider.dart';
import 'package:chashy_app/theme.dart';
import 'package:chashy_app/widgets/bottom_navbar.dart';
import 'package:chashy_app/widgets/city_card.dart';
import 'package:chashy_app/widgets/tips_card.dart';
import 'package:chashy_app/widgets/villa_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExplorePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var villaProvider = Provider.of<VillaProvider>(context);
    villaProvider.getRecommendedSpaces();

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
            children: [
              SizedBox(height: edge,),
              //NOTE: Tittle/Header
              Padding(
                padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Explore Now',
                  style: blackTextStyle.copyWith(
                  fontSize: 24,
                  ),
                  ),
              ),
              SizedBox(height: 2,),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Mencari Villa yang Bagus',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              // NOTE: POPULAR PLACE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular Place',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 24,),
                    CityCard(
                      City(
                        id: 1,
                        name: 'Cilember',
                        imageUrl: 'assets/images/jkt.png',
                        isPopular: true,
                      ),
                    ),
                    SizedBox(width: 20,),
                    CityCard(
                      City(
                        id: 1,
                        name: 'Cisarua',
                        imageUrl: 'assets/images/bandung.png',
                        isPopular: true,
                      ),
                    ),
                    SizedBox(width: 20,),
                    CityCard(
                      City(
                        id: 2,
                        name: 'Cipanas',
                        imageUrl: 'assets/images/sby.png',
                        isPopular: false,
                      ),
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              // NOTE: POPULAR PLACE
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Recomended Villas',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                  child:
                  Column(
                          children: [
                            VillaCard(
                              Villa(
                                id: 1,
                                name: 'Villa Farhan',
                                imageUrl: 'assets/images/villaHot.png',
                                phone:'0896xxxxxx93',
                                numberOfBed: 4,
                                numberOfCupboards: 4,
                                numberOfKitchens: 1,
                                address: 'jl cisarua no.45',
                                mapUrl: 'url',
                                rating: 5,
                                price: 3500000,
                                place: 'Cisarua',
                                city: 'Bogor', photos: [],
                              ),
                            ),
                            SizedBox(height: 30,),
                            VillaCard(
                              Villa(
                                id: 2,
                                name: 'Villa Nenek',
                                imageUrl: 'assets/images/villaNenek.png',
                                phone:'0896xxxxxx93',
                                numberOfBed: 4,
                                numberOfCupboards: 4,
                                numberOfKitchens: 1,
                                address: 'jl cisarua no.45',
                                mapUrl: 'url',
                                rating: 4,
                                price: 2000000,
                                place: 'Cisarua',
                                city: 'Bogor', photos: [],

                              ),
                            ),
                            SizedBox(height: 30,),
                            VillaCard(
                              Villa(
                                id: 3,
                                name: 'Villa Darling',
                                imageUrl: 'assets/images/villaDarling.png',

                                rating: 4,
                                price: 2000000,
                                phone:'0896xxxxxx93',
                                numberOfBed: 4,
                                numberOfCupboards: 4,
                                numberOfKitchens: 1,
                                address: 'jl cisarua no.45',
                                mapUrl: 'url',
                                place: 'Cisarua',
                                city: 'Bogor', photos: [],
                              ),
                            ),
                            SizedBox(height: 30,),
                            VillaCard(
                              Villa(
                                id: 4,
                                name: 'Villa Apel',
                                imageUrl: 'assets/images/jkt.png',
                                rating: 4,
                                price: 1000000,
                                place: 'Cipanas',
                                phone:'0896xxxxxx93',
                                numberOfBed: 4,
                                numberOfCupboards: 4,
                                numberOfKitchens: 1,
                                address: 'jl cisarua no.45',
                                mapUrl: 'url',
                                city: 'Bogor', photos: [],
                              ),
                            ),
                            SizedBox(height: 30,),
                          ],
                  ),
                ),
              //NOTE: TIPS & GUIDANCE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips & Guidance',
                  style: greyTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    TipsCard(
                      Tips(
                        id: 1,
                        title: 'City Guidlanes',
                        imageUrl: 'assets/images/icon_cg.png',
                        updateAt: '28 June 2021'
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(
                      Tips(
                          id: 2,
                          title: 'Jakarta Fairship',
                          imageUrl: 'assets/images/icon_jf.png',
                          updateAt: '8 Maret 2021'
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60 + edge,
              ),
            ],
        ),
      ),
      floatingActionButton:  Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffFFD076),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbar(
              imageUrl: 'assets/images/home.png',
              isActive: true,
            ),
            BottomNavbar(
              imageUrl: 'assets/images/Icon_mail.png',
              isActive: false,
            ),
            BottomNavbar(
              imageUrl: 'assets/images/Icon_card.png',
              isActive: false,
            ),
            BottomNavbar(
              imageUrl: 'assets/images/Icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}