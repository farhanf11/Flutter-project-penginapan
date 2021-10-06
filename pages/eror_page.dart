import 'package:chashy_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'explore_page.dart';

class ErrorPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 48,
            vertical: 190,
          ),

          child: Column(
            children: [
              Image.asset('assets/images/404.png',
                width: 300,),
              SizedBox(height: 40,),
              Text('Halaman yang kamu cari tidak ditemukan',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 22,
              ),),
              SizedBox(height: 25,),
              Text('hubungi pemilik villa untuk lebih lanjut',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),),
              SizedBox(height: 100,),
              Container(
                width: 210,
                height: 50,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ErrorPage(),
                    ),
                    );
                  },
                  color: purpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Text('Back to Home',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
